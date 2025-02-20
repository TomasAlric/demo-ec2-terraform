data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_instance" "frontend" {
  filter {
    name   = "tag:Name"
    values = ["${var.project_name}-frontend"]
  }
}
