#!/bin/bash
test_ip="ubuntu@$(cat files/test_ip)"
#echo "$build_ip"
#pwd
#cd .ssh
chmod 400 ~/.ssh/vmkey.pem
ssh -i ~/.ssh/vmkey.pem "$test_ip" << EOF
    ls
    sudo rm -r Dev-Ops-Proj
    git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git
    cd Dev-Ops-Proj

    git checkout jenkins

    DATABASE_URI="$(cat files/prod_rds_endpoint)"
    TEST_DATABASE_URI="$(cat files/test_rds_endpoint)"
    DATABASE_SECRET_KEY="jksdfl9weir90238908f09sdf8hfds"

    cd flask-app
    sudo docker-compose up -d
#    sudo docker exec backend bash -c "pytest tests/ --cov application"
#    sudo docker exec frontend bash -c "pytest tests/ --cov application"
EOF