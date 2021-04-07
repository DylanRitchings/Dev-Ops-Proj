#!/bin/bash
cd ..
test_rds_endpoint=$(cat ../files/test_rds_endpoint)
rds_endpoint=$(cat ../files/rds_endpoint)
sed -i '4s/.*/DATABASE_URI='"'$rds_endpoint'"'/' Jenkinsfile
sed -i '5s/.*/TEST_DATABASE_URI='"'$test_rds_endpoint'"'/' Jenkinsfile