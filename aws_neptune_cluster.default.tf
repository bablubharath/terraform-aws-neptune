resource "aws_neptune_cluster" "default" {
  apply_immediately                    = var.apply_immediately
  availability_zones                   = var.availability_zones
  backup_retention_period              = var.cluster["backup_retention_period"]
  cluster_identifier                   = var.cluster_identifier
  enable_cloudwatch_logs_exports       = ["audit"]
  engine                               = var.engine
  iam_database_authentication_enabled  = var.cluster["iam_database_authentication_enabled"]
  iam_roles                            = []
  kms_key_arn                          = var.kms_key_arn
  neptune_cluster_parameter_group_name = aws_neptune_parameter_group.examplea.name
  neptune_subnet_group_name            = aws_neptune_subnet_group.default.name
  port                                 = 8182
  preferred_backup_window              = var.cluster["preferred_backup_window"]
  preferred_maintenance_window         = "wed:04:00-wed:09:00"
  skip_final_snapshot                  = var.cluster["skip_final_snapshot"]
  storage_encrypted                    = true
  vpc_security_group_ids               = [aws_security_group.neptune.id]
  tags                                 = var.common_tags
}
