output "vpc" {
  value = aws_vpc.revolution_vpc.id
}

output "subnet_web_public_1a" {
  value = aws_subnet.revolution_web_subnet_public_1a.id
}

output "subnet_web_public_1b" {
  value = aws_subnet.revolution_web_subnet_public_1b.id
}

output "subnet_web_public_1c" {
  value = aws_subnet.revolution_web_subnet_public_1c.id
}

output "subnet_app_private_1a" {
  value = aws_subnet.revolution_app_subnet_private_1a.id
}

output "subnet_app_private_1b" {
  value = aws_subnet.revolution_app_subnet_private_1b.id
}

output "subnet_app_private_1c" {
  value = aws_subnet.revolution_app_subnet_private_1c.id
}

output "subnet_database_private_1a" {
  value = aws_subnet.revolution_database_subnet_private_1a.id
}

output "subnet_database_private_1b" {
  value = aws_subnet.revolution_database_subnet_private_1b.id
}

output "subnet_database_private_1c" {
  value = aws_subnet.revolution_database_subnet_private_1c.id
}
