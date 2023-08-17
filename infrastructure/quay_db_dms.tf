# resource "aws_dms_certificate" "quay_dms_cert" {
#   certificate_id  = "${var.prefix}-dms-certificate"
# }
# IAM roles

resource "aws_iam_role" "dms_assume_role" {
  name        = "${var.prefix}-dms-assume-role"
  description = "Allows DMS to manage VPC"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "dms.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "dms_access_for_endpoint_AmazonDMSRedshiftS3Role" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDMSRedshiftS3Role"
  role       = aws_iam_role.dms_assume_role.name
}

resource "aws_iam_role_policy_attachment" "dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDMSCloudWatchLogsRole"
  role       = aws_iam_role.dms_assume_role.name
}

resource "aws_iam_role_policy_attachment" "dms_vpc_role_AmazonDMSVPCManagementRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDMSVPCManagementRole"
  role       = aws_iam_role.dms_assume_role.name
}

# For assessment 
resource "aws_iam_role_policy_attachment" "dms_vpc_role_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = aws_iam_role.dms_assume_role.name
}

# Create a new endpoint for forward migration
resource "aws_dms_endpoint" "quay_dms_mysql_src" {
  database_name               = "quay"
  endpoint_id                 = "${var.prefix}-dms-mysql-src"
  endpoint_type               = "source"
  engine_name                 = "mysql"
  extra_connection_attributes = ""
  username                    = "quay"
  password                    = "${var.db_password}"
  port                        = 3306
  ssl_mode                    = "none"
  server_name                 = aws_db_instance.quay_db.address
}

resource "aws_dms_endpoint" "quay_dms_postgres_dest" {
  database_name               = "quay"
  endpoint_id                 = "${var.prefix}-dms-postgres-target"
  endpoint_type               = "target"
  engine_name                 = "aurora-postgresql"
  extra_connection_attributes = ""
  username                    = "quay"
  password                    = "${var.db_password}"
  port                        = 5432
  ssl_mode                    = "none"
  server_name                 = aws_rds_cluster.primary.endpoint
}

# Create a new endpoint for reverse migration
resource "aws_dms_endpoint" "quay_dms_mysql_dest" {
  database_name               = "quay"
  endpoint_id                 = "${var.prefix}-dms-mysql-target"
  endpoint_type               = "target"
  engine_name                 = "mysql"
  extra_connection_attributes = ""
  username                    = "quay"
  password                    = "${var.db_password}"
  port                        = 3306
  ssl_mode                    = "none"
  server_name                 = aws_db_instance.quay_db.address
}

resource "aws_dms_endpoint" "quay_dms_postgres_src" {
  database_name               = "quay"
  endpoint_id                 = "${var.prefix}-dms-postgres-src"
  endpoint_type               = "source"
  engine_name                 = "aurora-postgresql"
  extra_connection_attributes = "mapBooleanAsBoolean=true"
  username                    = "quay"
  password                    = "${var.db_password}"
  port                        = 5432
  ssl_mode                    = "none"
  server_name                 = aws_rds_cluster.primary.endpoint
}



resource "aws_dms_replication_subnet_group" "quay_dms_subnet_group" {
  replication_subnet_group_description = "${var.prefix} DMS subnet group"
  replication_subnet_group_id          = "${var.prefix}-dms-subnet-group"

  subnet_ids = aws_db_subnet_group.db_subnet_group.subnet_ids
  
  # explicit depends_on is needed since this resource doesn't reference the role or policy attachment
  depends_on = [aws_iam_role_policy_attachment.dms_vpc_role_AmazonDMSVPCManagementRole]
}


# Create a new replication instance
resource "aws_dms_replication_instance" "quay_dms_replication_instance" {
  allocated_storage            = 20
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  availability_zone            = "us-east-1a"
  engine_version               = "3.4.7"
  multi_az                     = false
  preferred_maintenance_window = "sun:10:30-sun:14:30"
  publicly_accessible          = true
  replication_instance_class   = "dms.c5.2xlarge"
  replication_instance_id      = "${var.prefix}-dms-replication-instance-tf"
  replication_subnet_group_id  = aws_dms_replication_subnet_group.quay_dms_subnet_group.id

  vpc_security_group_ids = [aws_security_group.db_security_group.id]

  depends_on = [
    aws_iam_role_policy_attachment.dms_access_for_endpoint_AmazonDMSRedshiftS3Role,
    aws_iam_role_policy_attachment.dms_cloudwatch_logs_role_AmazonDMSCloudWatchLogsRole,
    aws_iam_role_policy_attachment.dms_vpc_role_AmazonDMSVPCManagementRole
  ]
}


# Create a new replication task
resource "aws_dms_replication_task" "mysql_to_postgres_cdc" {
  migration_type            = "full-load-and-cdc"
  replication_instance_arn  = aws_dms_replication_instance.quay_dms_replication_instance.replication_instance_arn
  replication_task_id       = "${var.prefix}-mysql-to-postgres"
  source_endpoint_arn       = aws_dms_endpoint.quay_dms_mysql_src.endpoint_arn
  target_endpoint_arn = aws_dms_endpoint.quay_dms_postgres_dest.endpoint_arn

  lifecycle {
	  ignore_changes = ["replication_task_settings"]
  }

  table_mappings = <<EOF
  {
    "rules": [
        {
            "rule-type": "selection",
            "rule-id": "1",
            "rule-name": "select-quay",
            "object-locator": {
                "schema-name": "quay",
                "table-name": "%"
            },
            "rule-action": "include",
            "filters": []
        },
        {
          "rule-type": "transformation",
          "rule-id": "2",
          "rule-name": "convert-tinyint-boolean",
          "rule-action": "change-data-type",
          "rule-target": "column",
          "object-locator": {
                "schema-name": "quay",
                "table-name": "%",
                "column-name": "%",
                "data-type": "int1"
          },
          "data-type": {
            "type": "boolean"
          }
        }
    ]
  }
  EOF

  replication_task_settings = <<EOF
  {
    "TargetMetadata": {
      "TargetSchema": "public",
      "SupportLobs": true,
      "FullLobMode": false,
      "LobChunkSize": 64,
      "LimitedSizeLobMode": true,
      "LobMaxSize": 32,
      "InlineLobMaxSize": 0,
      "LoadMaxFileSize": 0,
      "ParallelLoadThreads": 0,
      "ParallelLoadBufferSize":0,
      "ParallelLoadQueuesPerThread": 1,
      "ParallelApplyThreads": 0,
      "ParallelApplyBufferSize": 100,
      "ParallelApplyQueuesPerThread": 1,    
      "BatchApplyEnabled": false,
      "TaskRecoveryTableEnabled": false
    },  
    "FullLoadSettings": {
      "TargetTablePrepMode": "DROP_AND_CREATE",
      "CreatePkAfterFullLoad": false,
      "StopTaskCachedChangesApplied": false,
      "StopTaskCachedChangesNotApplied": false,
      "MaxFullLoadSubTasks": 8,
      "TransactionConsistencyTimeout": 600,
      "CommitRate": 10000
    },
    "Logging": {
      "EnableLogging": true,
      "LogComponents": [
        {
          "Id": "FILE_FACTORY",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "METADATA_MANAGER",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "SORTER",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "SOURCE_CAPTURE",
          "Severity": "LOGGER_SEVERITY_DEBUG"
        },{
          "Id": "SOURCE_UNLOAD",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "TABLES_MANAGER",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "TARGET_APPLY",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "TARGET_LOAD",
          "Severity": "LOGGER_SEVERITY_DEBUG"
        },{
          "Id": "TASK_MANAGER",
          "Severity": "LOGGER_SEVERITY_DEBUG"
        },{
          "Id": "TRANSFORMATION",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        }      
      ],
      "CloudWatchLogGroup": null,
      "CloudWatchLogStream": null
    },
    "ValidationSettings": {
      "EnableValidation": false,
      "ValidationMode": "ROW_LEVEL",
      "ThreadCount": 5,
      "PartitionSize": 10000,
      "FailureMaxCount": 1000,
      "RecordFailureDelayInMinutes": 5,
      "RecordSuspendDelayInMinutes": 30,
      "MaxKeyColumnSize": 8096,
      "TableFailureMaxCount": 10000,
      "ValidationOnly": false,
      "HandleCollationDiff": false,
      "RecordFailureDelayLimitInMinutes": 1,
      "SkipLobColumns": false,
      "ValidationPartialLobSize": 0,
      "ValidationQueryCdcDelaySeconds": 0
    }
  }
  EOF
}

resource "aws_dms_replication_task" "postgres_to_mysql" {
  migration_type            = "cdc"
  replication_instance_arn  = aws_dms_replication_instance.quay_dms_replication_instance.replication_instance_arn
  replication_task_id       = "${var.prefix}-postgres-to-mysql"
  target_endpoint_arn       = aws_dms_endpoint.quay_dms_mysql_dest.endpoint_arn
  source_endpoint_arn = aws_dms_endpoint.quay_dms_postgres_src.endpoint_arn

  lifecycle {
	  ignore_changes = ["replication_task_settings"]
  }

  table_mappings = <<EOF
  {
    "rules": [
        {
            "rule-type": "selection",
            "rule-id": "1",
            "rule-name": "select-quay",
            "object-locator": {
                "schema-name": "public",
                "table-name": "%"
            },
            "rule-action": "include",
            "filters": []
        },
        {
          "rule-type": "transformation",
          "rule-id": "2",
          "rule-name": "rename-schema-quay",
          "rule-action": "rename",
          "rule-target": "schema",
          "value": "quay",
          "object-locator": {
                "schema-name": "public"
          }
        },
        {
          "rule-type": "transformation",
          "rule-id": "3",
          "rule-name": "convert-boolean-tinyint",
          "rule-action": "change-data-type",
          "rule-target": "column",
          "object-locator": {
                "schema-name": "%",
                "table-name": "%",
                "column-name": "%",
                "data-type": "boolean"
          },
          "data-type": {
            "type": "int1"
          }
        }
    ]
  }
  EOF

  replication_task_settings = <<EOF
  {
    "TargetMetadata": {
      "TargetSchema": "",
      "SupportLobs": true,
      "FullLobMode": false,
      "LobChunkSize": 64,
      "LimitedSizeLobMode": true,
      "LobMaxSize": 32,
      "InlineLobMaxSize": 0,
      "LoadMaxFileSize": 0,
      "ParallelLoadThreads": 0,
      "ParallelLoadBufferSize":0,
      "ParallelLoadQueuesPerThread": 1,
      "ParallelApplyThreads": 0,
      "ParallelApplyBufferSize": 100,
      "ParallelApplyQueuesPerThread": 1,    
      "BatchApplyEnabled": false,
      "TaskRecoveryTableEnabled": false
    },  
    "FullLoadSettings": {
      "TargetTablePrepMode": "DROP_AND_CREATE",
      "CreatePkAfterFullLoad": false,
      "StopTaskCachedChangesApplied": false,
      "StopTaskCachedChangesNotApplied": false,
      "MaxFullLoadSubTasks": 8,
      "TransactionConsistencyTimeout": 600,
      "CommitRate": 10000
    },
    "Logging": {
      "EnableLogging": true,
      "LogComponents": [
        {
          "Id": "FILE_FACTORY",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "METADATA_MANAGER",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "SORTER",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "SOURCE_CAPTURE",
          "Severity": "LOGGER_SEVERITY_DEBUG"
        },{
          "Id": "SOURCE_UNLOAD",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "TABLES_MANAGER",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "TARGET_APPLY",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        },{
          "Id": "TARGET_LOAD",
          "Severity": "LOGGER_SEVERITY_DEBUG"
        },{
          "Id": "TASK_MANAGER",
          "Severity": "LOGGER_SEVERITY_DEBUG"
        },{
          "Id": "TRANSFORMATION",
          "Severity": "LOGGER_SEVERITY_DEFAULT"
        }
      ],
      "CloudWatchLogGroup": null,
      "CloudWatchLogStream": null
    },
    "ValidationSettings": {
      "EnableValidation": false,
      "ValidationMode": "ROW_LEVEL",
      "ThreadCount": 5,
      "PartitionSize": 10000,
      "FailureMaxCount": 1000,
      "RecordFailureDelayInMinutes": 5,
      "RecordSuspendDelayInMinutes": 30,
      "MaxKeyColumnSize": 8096,
      "TableFailureMaxCount": 10000,
      "ValidationOnly": false,
      "HandleCollationDiff": false,
      "RecordFailureDelayLimitInMinutes": 1,
      "SkipLobColumns": false,
      "ValidationPartialLobSize": 0,
      "ValidationQueryCdcDelaySeconds": 0
    }
  }
  EOF
}