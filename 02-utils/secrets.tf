resource "aws_secretsmanager_secret" "database_secrets" {
  name        = "/revolution/database"
  description = "Revolution database credentials"

  recovery_window_in_days = 0
  
}