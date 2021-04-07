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
  vpc_security_group_ids = [[module.security_group.pub_sg_id],[module.security_group.not_priv_sg_id]]
}

module "rds_instances" {
  //TODO put in separate file
  username = "root"
  password = "password"
  source = "./RDS"
  sub_id1 = module.aws_vpc.not_priv_rds_sub_id1
  sub_id2 = module.aws_vpc.not_priv_rds_sub_id2
  vpc_security_group_ids = [module.security_group.not_priv_rds_sg_id]

}