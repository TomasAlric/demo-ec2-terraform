resource "aws_eip" "frontend_eip" {}

resource "aws_eip_association" "frontend_association" {
  instance_id   = data.terraform_remote_state.frontend.outputs.frontend_instance_id 
  allocation_id = aws_eip.frontend_eip.id  
}
