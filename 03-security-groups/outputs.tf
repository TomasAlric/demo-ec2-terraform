output "frontend_security_group" {
  value = aws_security_group.frontend_sg.id
}

output "backend_security_group" {
  value = aws_security_group.backend_sg.id
}

output "rds_security_group" {
  value = aws_security_group.rds_sg.id
}