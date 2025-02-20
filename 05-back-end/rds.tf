resource "aws_db_subnet_group" "database_subnet" {
  name = "revolution-database-subnet"
  subnet_ids = [
    local.subnets[6],
    local.subnets[7],
    local.subnets[8]
  ]
}

resource "aws_db_instance" "rds" {
  identifier             = "${var.project_name}-db"
  instance_class         = "db.t4g.micro"
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "16.3"
  storage_type           = "gp2"
  db_name                = "revolution_db"
  username               = jsondecode(data.aws_secretsmanager_secret_version.database_secrets.secret_string)["username"]
  password               = jsondecode(data.aws_secretsmanager_secret_version.database_secrets.secret_string)["password"]
  db_subnet_group_name   = aws_db_subnet_group.database_subnet.name
  vpc_security_group_ids = [data.terraform_remote_state.security.outputs.rds_security_group]
  publicly_accessible    = false
  multi_az               = false
  availability_zone      = "${data.aws_region.current.name}a"

  skip_final_snapshot = true

  tags = merge(
    {
      Name = "${var.project_name}-rds"
    },
    var.tags
  )
}
