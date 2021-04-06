provider "aws" {
  region                  = var.aws_region
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
  pub_sub_id             = module.aws_vpc.pub_sub_id
  not_priv_sub_id            = module.aws_vpc.not_priv_sub_id
  vpc_security_group_ids = [module.security_group.aws_wsg_id]
}

module "RDS_instances" {
  username = "root"
  password = "password"
  source = "./RDS"
  sub_id1 = module.aws_vpc.not_priv_rds_sub_id1
  sub_id2 = module.aws_vpc.not_priv_rds_sub_id2
//  subnetB_id = module.aws_vpc.public_subnetB_id
  vpc_security_group_ids = [module.security_group.aws_wsg_id]

}