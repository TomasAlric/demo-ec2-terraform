resource "aws_vpc" "revolution_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = merge(
    {
      Name = "${var.project_name}-vpc"
    },
    var.tags
  )
}
