data "aws_availability_zones" "available" {
  state = "available"
}
resource "aws_instance" "build_vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key
  subnet_id              = var.pub_sub_id
  vpc_security_group_ids = var.vpc_security_group_ids[0]


  tags = {
    Name    = "build_vm"
    project = "dev_ops_project"
  }

}

resource "aws_instance" "test_vm"{
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key
  subnet_id              = var.pub_sub_id //not_priv_sub_id
  vpc_security_group_ids = var.vpc_security_group_ids[1]

  tags = {
    Name    = "test_vm"
    project = "dev_ops_project"
  }
}

//resource "aws_instance" "app_vm"{
//  ami                    = var.ami_id
//  instance_type          = var.instance_type
//  key_name               = var.key
//  subnet_id              = var.pub_sub_id
//  vpc_security_group_ids = var.vpc_security_group_ids[0]
//
//  tags = {
//    Name    = "app_vm"
//    project = "dev_ops_project"
//  }
//}
