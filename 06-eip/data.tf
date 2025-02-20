data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "terraform_remote_state" "frontend" {
  backend = "s3"
  config = {
    bucket = "tfstate-2025-712107929769"
    key    = "frontend/terraform.tfstate"
    region = "us-east-1"
  }
}