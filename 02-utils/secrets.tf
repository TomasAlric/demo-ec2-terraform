resource "aws_secretsmanager_secret" "database_secrets" {
  name        = "/revolution/database"
  description = "Revolution database credentials"
}