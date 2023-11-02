resource "aws_elasticache_replication_group" "quay_build_redis" {
  automatic_failover_enabled    = true
  # availability_zones            = var.redis_azs
  replication_group_id          = "${var.prefix}-build-redis-rep-group"
  node_type                     = "cache.t2.small"
  num_cache_clusters            = 2
  parameter_group_name          = "default.redis7"
  port                          = 6379
  subnet_group_name             = "${aws_elasticache_subnet_group.quay_build_redis_subnet_group.name}"
  security_group_ids            = [aws_security_group.db_security_group.id]
  auth_token                    = "${var.db_password}"
  description                   = "${var.prefix} replication group"


  at_rest_encryption_enabled    = true
  transit_encryption_enabled    = true
  apply_immediately             = true
  tags = {
    Deployment = "${var.prefix}"
  }
}

resource "aws_elasticache_subnet_group" "quay_build_redis_subnet_group" {
  name       = "${var.prefix}-build-redis-subnet"
  subnet_ids = module.quay_vpc.public_subnets
  tags = {
    Deployment = "${var.prefix}"
  }
}

resource "aws_elasticache_cluster" "quay_modelcache_redis" {
  cluster_id           = "${var.prefix}-modelcache-redis"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis7"
  engine_version       = "7.0"
  port                 = 6379
  apply_immediately    = true
  tags = {
    Deployment = "${var.prefix}"
  }
}
