data "aws_availability_zones" "available" {
  state = "available"
}
resource "aws_instance" "My_VM" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "vmkey"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids



  tags = {
    Name    = "My_VM"
    project = "terraform"
  }

}
