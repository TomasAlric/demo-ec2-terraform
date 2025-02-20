locals {
  tags = merge(var.tags, {
    Environment = "production"
  })

  frontend_instance_id = data.terraform_remote_state.frontend.outputs.frontend_instance_id
}