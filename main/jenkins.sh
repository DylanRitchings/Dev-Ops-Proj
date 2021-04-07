#!/bin/bash
cd ..
test_rds_endpoint=$(cat files/test_rds_endpoint)
prod_rds_endpoint=$(cat files/prod_rds_endpoint)
sed -i '4s/.*/      DATABASE_URI='"'$prod_rds_endpoint'"'/' Jenkinsfile
sed -i '5s/.*/      TEST_DATABASE_URI='"'$test_rds_endpoint'"'/' Jenkinsfile