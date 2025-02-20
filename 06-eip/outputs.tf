output "eip_frontend" {
  description = "Elastic IP associado ao frontend"
  value       = aws_eip.frontend_eip.public_ip
}