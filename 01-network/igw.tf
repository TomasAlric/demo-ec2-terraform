resource "aws_internet_gateway" "revolution_igw" {
  vpc_id = aws_vpc.revolution_vpc.id

  tags = merge(
    {
      Name = "${var.project_name}-igw"
    },
    var.tags
  )
}