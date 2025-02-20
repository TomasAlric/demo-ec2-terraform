resource "aws_eip" "frontend_eip" {}

resource "aws_eip_association" "frontend_association" {
  instance_id   = data.aws_instance.frontend.id  
  allocation_id = aws_eip.frontend_eip.id  
}
