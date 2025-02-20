locals {
  tags = merge(var.tags, {
    Environment = "production"
  })

  vpc = data.terraform_remote_state.network.outputs.vpc

}