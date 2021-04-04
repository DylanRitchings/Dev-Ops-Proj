data "aws_availability_zones" "available" {
  state = "available"
}
resource "aws_security_group" "wsg" {
  name        = var.name
  description = "Allow SSH"
  vpc_id = var.vpc_id_SG
  ingress {
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_blocks = [var.open_internet]
  }

  ingress {
    from_port  = 80
    to_port    = 80
    protocol   = "tcp"
    cidr_blocks = [var.open_internet]
  }

    ingress {
    from_port  = 8080
    to_port    = 8080
    protocol   = "tcp"
    cidr_blocks = [var.open_internet]
  }

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [var.configure_VM_CIDR]
  }


  egress {
    from_port = var.outbound_port

    protocol   = -1
    to_port    = var.outbound_port
    cidr_blocks = [var.open_internet]
  }


  tags = {
    project = "dev_ops_project"
  }

}