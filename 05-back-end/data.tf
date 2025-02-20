data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

data "aws_secretsmanager_secret" "database_secrets" {
  name = "/revolution/database"
}

data "aws_secretsmanager_secret_version" "database_secrets" {
  secret_id = data.aws_secretsmanager_secret.database_secrets.id
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "tfstate-2025-712107929769"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "security" {
  backend = "s3"
  config = {
    bucket = "tfstate-2025-712107929769"
    key    = "sg/terraform.tfstate"
    region = "us-east-1"
  }
}

data "aws_ami" "linux" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}