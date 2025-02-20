resource "aws_route_table" "revolution_public_route_table" {
  vpc_id = aws_vpc.revolution_vpc.id

  tags = merge(
    {
      Name = "${var.project_name}-public-route-table"
    },
    var.tags
  )
}

resource "aws_route" "revolution_public_internet_route" {
  route_table_id         = aws_route_table.revolution_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.revolution_igw.id
}

resource "aws_route_table_association" "revolution_subnet_public_association_1a" {
  subnet_id      = aws_subnet.revolution_web_subnet_public_1a.id
  route_table_id = aws_route_table.revolution_public_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_public_association_1b" {
  subnet_id      = aws_subnet.revolution_web_subnet_public_1b.id
  route_table_id = aws_route_table.revolution_public_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_public_association_1c" {
  subnet_id      = aws_subnet.revolution_web_subnet_public_1c.id
  route_table_id = aws_route_table.revolution_public_route_table.id
}

resource "aws_route_table" "revolution_private_route_table" {
  vpc_id = aws_vpc.revolution_vpc.id

  tags = merge(
    {
      Name = "${var.project_name}-private-route-table"
    },
    var.tags
  )
}

resource "aws_route_table_association" "revolution_subnet_private_app_association_1a" {
  subnet_id      = aws_subnet.revolution_app_subnet_private_1a.id
  route_table_id = aws_route_table.revolution_private_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_private_database_association_1a" {
  subnet_id      = aws_subnet.revolution_database_subnet_private_1a.id
  route_table_id = aws_route_table.revolution_private_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_private_app_association_1b" {
  subnet_id      = aws_subnet.revolution_app_subnet_private_1b.id
  route_table_id = aws_route_table.revolution_private_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_private_database_association_1b" {
  subnet_id      = aws_subnet.revolution_database_subnet_private_1b.id
  route_table_id = aws_route_table.revolution_private_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_private_app_association_1c" {
  subnet_id      = aws_subnet.revolution_app_subnet_private_1c.id
  route_table_id = aws_route_table.revolution_private_route_table.id
}

resource "aws_route_table_association" "revolution_subnet_private_database_association_1c" {
  subnet_id      = aws_subnet.revolution_database_subnet_private_1c.id
  route_table_id = aws_route_table.revolution_private_route_table.id
}
