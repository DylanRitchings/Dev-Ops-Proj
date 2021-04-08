#!/bin/bash
test_ip="ubuntu@$(cat files/test_ip)"
chmod 400 ~/.ssh/vmkey.pem
ssh -i ~/.ssh/vmkey.pem "$test_ip" << 'EOF'

    sudo rm -r Dev-Ops-Proj
    git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git
    cd Dev-Ops-Proj

    git checkout jenkins
    cd flask-app
    mysql -u root --password=password -h test.cyjzk1rwhp13.eu-west-2.rds.amazonaws.com < ~/Dev-Ops-Proj/flask-app/database/Create.sql

    docker-compose up -d
    docker exec backend bash -c "pytest tests/ --cov application"
    docker exec frontend bash -c "pytest tests/ --cov application"

    #dockerhub upload
    sudo docker build backend2 -t dylanrit/backend
    sudo docker push dylanrit/backend

    sudo docker build frontend2 -t dylanrit/frontend
    sudo docker push dylanrit/frontend
#    cd backend/
#    sudo docker build -t dylanrit/backend:latest .
#    sudo docker push dylanrit/backend:latest

#    sudo chmod 666 /var/run/docker.sock
##    sudo docker login --username="${DOCKER_USER}" --password="${DOCKER_PASSWORD}"
#
#    cd backend
#    docker run -d -p 5001:5001 --name backend backend:latest
#    docker build -t dylanrit/backend:latest
#    sudo docker push dylanrit/backend:latest

    docker-compose down

EOF