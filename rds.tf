variable g73_techchallenge_db_username {
  type        = string
  description = "AWS RDS username"
}
variable g73_techchallenge_db_password {
  type        = string
  description = "AWS RDS password"
}

resource "aws_db_instance" "g73_techchallenge_db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "12.6"
  instance_class       = "db.t2.micro"
  name                 = "g73-techchallenge-db"
  username             = var.g73_techchallenge_db_username
  password             = var.g73_techchallenge_db_password
  parameter_group_name = "default.postgres12"
}