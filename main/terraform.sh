#!/bin/bash
set -e

cd ../terraform

terraform init
terraform plan
terraform apply

terraform output -raw build_ip > ../files/build_ip
terraform output -raw test_ip > ../files/test_ip

terraform output -raw prod_rds_endpoint > ../files/prod_rds_endpoint
terraform output -raw test_rds_endpoint > ../files/test_rds_endpoint

cd ../main
