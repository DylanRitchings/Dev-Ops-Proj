#!/bin/bash
test_ip="ubuntu@$(cat files/test_ip)"
chmod 400 ~/.ssh/vmkey.pem
ssh -i ~/.ssh/vmkey.pem "$test_ip" << EOF
    ls
    sudo rm -r Dev-Ops-Proj
    git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git
    cd Dev-Ops-Proj

    git checkout jenkins
    cd flask-app
    db_password=password
    mysql -u root -p=${db_password} -h test.cyjzk1rwhp13.eu-west-2.rds.amazonaws.com < ~/Dev-Ops-Proj/flask-app/database/Create.sql

    sudo docker-compose up -d
    sudo docker exec backend bash -c "pytest tests/ --cov application"
    sudo docker exec frontend bash -c "pytest tests/ --cov application"
EOF