data "aws_availability_zones" "available" {
  state = "available"
}
resource "aws_instance" "jenkins_vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  //TODO change key
  key_name               = "vmkey"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids



  tags = {
    Name    = "jenkins_vm"
    project = "dev_ops_project"
  }

}
