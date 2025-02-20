output "ecr_repository" {
  value = aws_ecr_repository.my_repository.id
}

output "secrets" {
  value = aws_secretsmanager_secret.database_secrets.id
}
