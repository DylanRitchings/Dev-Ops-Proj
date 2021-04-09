resource "aws_db_instance" "test_db" {
  allocated_storage    = 10
  storage_type = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "test_db"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot  = true
  identifier = "test"
  tags = {
      project = "dev_ops_project"
  }
}

//TODO change subnet?
resource "aws_db_instance" "prod_db" {
  allocated_storage    = 10
  storage_type = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "prod_db"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot  = true
  identifier = "prod"
  tags = {
      project = "dev_ops_project"
  }
}

resource "aws_db_subnet_group" "default" {
    name = "main"
    subnet_ids = [var.sub_id1,var.sub_id2]

    tags = {
        project = "dev_ops_project"
    }
}