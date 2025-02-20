locals {
  tags = merge(var.tags, {
    Environment = "production"
  })

  vpc = data.terraform_remote_state.network.outputs.vpc

  subnets = [
    data.terraform_remote_state.network.outputs.subnet_web_public_1a,
    data.terraform_remote_state.network.outputs.subnet_web_public_1b,
    data.terraform_remote_state.network.outputs.subnet_web_public_1c,
    data.terraform_remote_state.network.outputs.subnet_app_private_1a,
    data.terraform_remote_state.network.outputs.subnet_app_private_1b,
    data.terraform_remote_state.network.outputs.subnet_app_private_1c,
    data.terraform_remote_state.network.outputs.subnet_database_private_1a,
    data.terraform_remote_state.network.outputs.subnet_database_private_1b,
    data.terraform_remote_state.network.outputs.subnet_database_private_1c

  ]

  frontend_sg_id = data.terraform_remote_state.security.outputs.frontend_security_group
}