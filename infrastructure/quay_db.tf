resource "aws_db_instance" "quay_db" {
  identifier             = "${var.prefix}-quay-db"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "5.7.37"
  username               = "quay"
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.db_security_group.id]
  parameter_group_name   = aws_db_parameter_group.quay_db_prameter_group.name
  publicly_accessible    = true
  skip_final_snapshot    = true
  auto_minor_version_upgrade = false
  db_name                = "quay"
  multi_az = var.quay_db_multi_az
  tags = {
    Deployment = "${var.prefix}"
  }

  replicate_source_db = var.deploy_type == "secondary" ? var.primary_db_arn : null
  backup_retention_period = 5
}

resource "aws_db_parameter_group" "quay_db_prameter_group" {
  name   = "${var.prefix}-quay-db-parameter-group"
  family = "mysql5.7"

  tags = {
    Deployment = "${var.prefix}"
  }

  parameter {
    name  = "binlog_format"
    value = "ROW"
  }
}

# Aurora

resource "aws_rds_global_cluster" "quay_aurora" {
  global_cluster_identifier = "${var.prefix}-aurora-db"
  engine                    = "aurora-postgresql"
  engine_version            = "${var.aurora_version}"
  database_name             = "quay"
}


resource "aws_rds_cluster" "primary" {
  engine                    = aws_rds_global_cluster.quay_aurora.engine
  engine_version            = aws_rds_global_cluster.quay_aurora.engine_version
  engine_mode               = "provisioned"
  cluster_identifier        = "${var.prefix}-primary-db"
  master_username           = "quay"
  master_password           = "${var.db_password}"
  database_name             = "quay"
  global_cluster_identifier = aws_rds_global_cluster.quay_aurora.id
  db_subnet_group_name      = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.db_security_group.id]
  apply_immediately = true
  skip_final_snapshot = true

  serverlessv2_scaling_configuration {
    max_capacity = 2.0
    min_capacity = 0.5
  }
}

resource "aws_rds_cluster_instance" "primary" {
  engine               = aws_rds_global_cluster.quay_aurora.engine
  engine_version       = aws_rds_global_cluster.quay_aurora.engine_version
  identifier           = "${var.prefix}-primary-db-instance"
  cluster_identifier   = aws_rds_cluster.primary.id
  instance_class       = "db.serverless"
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
}