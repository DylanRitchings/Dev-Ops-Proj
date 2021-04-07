#!/bin/bash
#set -e
cd ../ansible
chmod 400 ../files/vmkey.pem


# Replaces line in inventory with ip
test_ip=$(cat ../files/test_ip)
build_ip=$(cat ../files/build_ip)

sed -i '3s/.*/    '"$test_ip"'/' inventory.yml
sed -i '10s/.*/    '"$build_ip"'/' inventory.yml

## Replace database uri with current uri
#test_rds_endpoint=$(cat ../files/test_rds_endpoint)
#sed -i '3s/.*/TEST_DATABASE_URI='"'$test_rds_endpoint'"'/' scripts/install_app.sh


# Run playbook
ansible-playbook -v -i inventory.yml playbook.yml

cd ../main

