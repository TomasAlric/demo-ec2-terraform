resource "aws_instance" "backend" {
  ami                  = data.aws_ami.linux.id
  instance_type        = "t3.micro"
  subnet_id            = local.subnets[0]
  security_groups      = [local.backend_sg_id]
  iam_instance_profile = aws_iam_instance_profile.ec2_ssm_ecr_profile.name

  tags = {
    Name = "revolution-backend"
  }
}


resource "aws_iam_instance_profile" "ec2_ssm_ecr_profile" {
  name = "ec2-ssm-ecr-profile"
  role = aws_iam_role.ec2_ssm_ecr_role.name
}