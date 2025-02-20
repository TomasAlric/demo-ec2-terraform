# Web Subnets
resource "aws_subnet" "revolution_web_subnet_public_1a" {
  vpc_id                  = aws_vpc.revolution_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    { Name = "${var.project_name}-web-subnet-public-1a" },
    var.tags
  )
}

resource "aws_subnet" "revolution_web_subnet_public_1b" {
  vpc_id                  = aws_vpc.revolution_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    { Name = "${var.project_name}-web-subnet-public-1b" },
    var.tags
  )
}

resource "aws_subnet" "revolution_web_subnet_public_1c" {
  vpc_id                  = aws_vpc.revolution_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone       = "${data.aws_region.current.name}c"
  map_public_ip_on_launch = true

  tags = merge(
    { Name = "${var.project_name}-web-subnet-public-1c" },
    var.tags
  )
}

# App Subnets
resource "aws_subnet" "revolution_app_subnet_private_1a" {
  vpc_id            = aws_vpc.revolution_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    { Name = "${var.project_name}-app-subnet-private-1a" },
    var.tags
  )
}

resource "aws_subnet" "revolution_app_subnet_private_1b" {
  vpc_id            = aws_vpc.revolution_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 5)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    { Name = "${var.project_name}-app-subnet-private-1b" },
    var.tags
  )
}

resource "aws_subnet" "revolution_app_subnet_private_1c" {
  vpc_id            = aws_vpc.revolution_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 6)
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    { Name = "${var.project_name}-app-subnet-private-1c" },
    var.tags
  )
}

# Database Subnets
resource "aws_subnet" "revolution_database_subnet_private_1a" {
  vpc_id            = aws_vpc.revolution_vpc.id
  cidr_block        = cidrsubnet("10.0.0.0/16", 8, 7)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    { Name = "${var.project_name}-database-subnet-private-1a" },
    var.tags
  )
}

resource "aws_subnet" "revolution_database_subnet_private_1b" {
  vpc_id            = aws_vpc.revolution_vpc.id
  cidr_block        = cidrsubnet("10.0.0.0/16", 8, 8)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    { Name = "${var.project_name}-database-subnet-private-1b" },
    var.tags
  )
}

resource "aws_subnet" "revolution_database_subnet_private_1c" {
  vpc_id            = aws_vpc.revolution_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 9)
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    { Name = "${var.project_name}-database-subnet-private-1c" },
    var.tags
  )
}
