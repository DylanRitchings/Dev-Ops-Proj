#!/bin/bash
sudo ssh -i /home/jenkins/.ssh/vmkey.pem ubuntu@"$(cat ../files/build_ip)" << EOF

    sudo rm -r Dev-Ops-Proj
    git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git
    cd Dev-Ops-Proj
    git checkout jenkins
    sudo docker-compose up -d
    sudo docker exec backend bash -c "pytest tests/ --cov application"
    sudo docker exec frontend bash -c "pytest tests/ --cov application"
EOF