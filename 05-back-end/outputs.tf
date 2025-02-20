output "backend_instance_id" {
  value = aws_instance.backend.id
}

output "iam_instance_profile" {
  value = aws_iam_instance_profile.ec2_ssm_ecr_profile.name

}

output "rds_endpoint" {
  value = aws_db_instance.rds.endpoint
}