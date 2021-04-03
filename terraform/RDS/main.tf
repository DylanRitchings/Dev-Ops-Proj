resource "aws_db_instance" "test" {
  allocated_storage    = 10
  storage_type = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot  = true
  identifier = "terraform-project"
  tags = {
      project = "terraform"
  }
}

resource "aws_db_subnet_group" "default" {
    name = "main"
    subnet_ids = [var.subnetA_id, var.subnetB_id]

    tags = {
        project = "terraform"
    }
}