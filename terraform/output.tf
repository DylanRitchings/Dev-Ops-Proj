output "build_ip" {
  value = module.ec2_instances.build_ip
}

output "test_ip" {
  value = module.ec2_instances.test_ip
}

output "prod_rds_endpoint" {
  value = module.rds_instances.prod_rds_endpoint
}

output "test_rds_endpoint" {
  value = module.rds_instances.test_rds_endpoint
}
