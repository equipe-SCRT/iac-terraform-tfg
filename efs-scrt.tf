resource "aws_efs_file_system" "efs_scrt" {
  creation_token = "token-criacao-scrt"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
  tags = {
    Name = "efs-scrt"
  }
}