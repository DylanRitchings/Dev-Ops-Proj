#!/bin/bash
build_ip=$(cat files/build_ip)
ssh -tt ./home/jenkins/.ssh/vmkey.pem ubuntu@"${build_ip}" << EOF
    ls
    sudo rm -r Dev-Ops-Proj
    git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git
    cd Dev-Ops-Proj
    git checkout jenkins
    cd flask-app
    sudo docker-compose up -d
    sudo docker exec backend bash -c "pytest tests/ --cov application"
    sudo docker exec frontend bash -c "pytest tests/ --cov application"
EOF