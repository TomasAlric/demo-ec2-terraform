resource "aws_secretsmanager_secret" "database_secrets" {
  name        = "/revolution/database"
  description = "Revolution database credentials"

  recovery_window_in_days = 0
  
}

resource "aws_secretsmanager_secret_version" "database_secrets_version" {
  secret_id     = aws_secretsmanager_secret.database_secrets.id
  secret_string = jsonencode({
    username = "admin"
    password = "password123"
  })
}