#!/bin/bash
set -e
cd ../ansible
chmod 400 ../files/vmkey.pem

test_ip=$(cat ../files/test_ip)
build_ip=$(cat ../files/build_ip)

# Replaces line in inventory with ip
sed -i '3s/.*/    '"$test_ip"'/' inventory.yml
sed -i '10s/.*/    '"$build_ip"'/' inventory.yml


# Run playbook
ansible-playbook -v -i inventory.yml playbook.yml

cd ../main

