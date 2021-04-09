#!/bin/bash
sudo apt install openjdk-8-jdk -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list' -y

sudo apt-get update && sudo apt-get install jenkins -y

