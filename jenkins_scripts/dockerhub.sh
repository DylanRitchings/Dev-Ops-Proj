sudo chmod 666 /var/run/docker.sock
#sudo docker login --username="${DOCKER_USER}" --password="${DOCKER_PASSWORD}"
rm -r Dev-Ops-Proj
alias pip="pip3"
git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git

cd Dev-Ops-Proj
git checkout jenkins
cd flask-app
docker-compose up -d
#docker run -d -p 5001:5001 --name backend backend:latest
docker build backend -t dylanrit/backend
docker push dylanrit/backend

docker build frontend -t dylanrit/frontend
docker push dylanrit/frontend

docker-compose down