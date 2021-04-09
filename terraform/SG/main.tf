data "aws_availability_zones" "available" {
  state = "available"
}
//TODO remove not needed ports?
resource "aws_security_group" "pub_sg" {
  name        = "Public SG"
  description = "Allows multiple ports for public subnet"
  vpc_id = var.vpc_id_SG

  //SSH
  ingress {
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_blocks = [var.public_cidr]
  }

  //HTTP
  ingress {
    from_port  = 80
    to_port    = 80
    protocol   = "tcp"
    cidr_blocks = [var.public_cidr]
  }

  //Jenkins
  ingress {
    from_port  = 8080
    to_port    = 8080
    protocol   = "tcp"
    cidr_blocks = [var.public_cidr]
  }




  egress {
    from_port = var.outbound_port

    protocol   = -1
    to_port    = var.outbound_port
    cidr_blocks = [var.public_cidr]
  }


  tags = {
    project = "dev_ops_project"
  }
}

resource "aws_security_group" "not_priv_sg" {
  name = "Test SG"
  description = "Allow multiple ports to not private subnet"
  vpc_id = var.vpc_id_SG

//  //Jenkins
//  ingress {
//    from_port  = 8080
//    to_port    = 8080
//    protocol   = "tcp"
//    cidr_blocks = [var.not_private_cidr]
//  }

  //SSH
  ingress {
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_blocks = [var.not_private_cidr]
  }
//  //HTTP
//  ingress {
//    from_port  = 80
//    to_port    = 80
//    protocol   = "tcp"
//    cidr_blocks = [var.public_cidr]
//  }
    //SQL
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [var.not_private_cidr]
  }

    egress {
    from_port = var.outbound_port

    protocol   = -1
    to_port    = var.outbound_port
    cidr_blocks = [var.public_cidr]
  }
}

resource "aws_security_group" "not_priv_rds_sg" {
  name = "RDS SG"
  description = "Allow MySQL port"
  vpc_id = var.vpc_id_SG
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [var.not_private_cidr]
  }
      egress {
    from_port = var.outbound_port

    protocol   = -1
    to_port    = var.outbound_port
    cidr_blocks = [var.public_cidr]
  }
}