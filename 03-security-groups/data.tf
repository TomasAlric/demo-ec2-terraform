data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "tfstate-2025-712107929769"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}