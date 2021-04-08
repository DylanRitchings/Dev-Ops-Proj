#!/bin/bash
cd ..
test_rds_endpoint=$(cat files/test_rds_endpoint)
prod_rds_endpoint=$(cat files/prod_rds_endpoint)

test_uri="mysql+pymysql://root:password@""${test_rds_endpoint}""/testdb"
prod_uri="mysql+pymysql://root:password@""${prod_rds_endpoint}""/testdb"

sed -i '4s/.*/      DATABASE_URI='"'$prod_uri'"'/' Jenkinsfile
sed -i '5s/.*/      DATABASE_URI='"'$test_uri'"'/' Jenkinsfile