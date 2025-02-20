locals {
  tags = merge(var.tags, {
    Environment = "Homologation"
  })
}
