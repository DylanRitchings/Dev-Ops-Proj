data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    project = "dev_ops_project"
  }
}

resource "aws_subnet" "pub_sub" {
  cidr_block              = var.pub_sub_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = true

  tags = {
    project = "dev_ops_project"
  }
}

resource "aws_subnet" "not_priv_sub" {
  cidr_block              = var.not_priv_sub_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = true //false in production

  tags = {
    project = "dev_ops_project"
  }
}

resource "aws_subnet" "not_priv_rds_sub1" {
  cidr_block              = var.not_priv_rds_sub_cidr1
  availability_zone       = data.aws_availability_zones.available.names[0]
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = true //false in production

  tags = {
    project = "dev_ops_project"
  }
}

resource "aws_subnet" "not_priv_rds_sub2" {
  cidr_block              = var.not_priv_rds_sub_cidr2
  availability_zone       = data.aws_availability_zones.available.names[1]
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = true //false in production

  tags = {
    project = "dev_ops_project"
  }
}




resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc.id

  # route {
  #   cidr_blocks = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.vpc_igw.id
  # }

  tags = {
    project = "dev_ops_project"
  }
}

resource "aws_route_table" "vpc_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }

  tags = {
    project = "dev_ops_project"
  }

}

resource "aws_route_table_association" "pub_rta" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.vpc_rt.id
}

//resource "aws_route_table_association" "sub2_rta" {
//  subnet_id      = aws_subnet.priv_sub.id
//  route_table_id = aws_route_table.vpc_rt.id
//}