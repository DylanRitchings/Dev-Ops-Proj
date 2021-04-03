provider "aws" {
  region                  = var.AWS_REGION
  shared_credentials_file = "~/.aws/credentials"
}
module "aws_vpc" {
  source = "./VPC"
}

module "security_group" {
  source    = "./SG"
  name      = "WebServerSG"
  vpc_id_SG = module.aws_vpc.vpc_id
}

module "ec2_instances" {
  source                 = "./EC2"
  subnet_id              = module.aws_vpc.public_subnetA_id
  vpc_security_group_ids = [module.security_group.aws_wsg_id]
}

module "RDS_instances" {
  username = "root"
  password = "password"
  source = "./RDS"
  subnetA_id = module.aws_vpc.public_subnetA_id
  subnetB_id = module.aws_vpc.public_subnetB_id
  vpc_security_group_ids = [module.security_group.aws_wsg_id]

}