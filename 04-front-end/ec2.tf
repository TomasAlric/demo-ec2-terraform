resource "aws_instance" "frontend" {
  ami                  = data.aws_ami.linux.id
  instance_type        = "t3.small"
  subnet_id            = local.subnets[0]
  security_groups      = [local.frontend_sg_id]

  tags = {
    Name = "revolution-frontend"
  }
}