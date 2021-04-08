sudo docker login --username="${DOCKER_USER}" --password="${DOCKER_PASSWORD}"
git clone https://github.com/DylanRitchings/Dev-Ops-Proj.git

cd Dev-Ops-Proj/flask-app/backend
docker build -t dylanrit/backend
sudo docker push dylanrit/backend

cd ../frontend
docker build -t dylanrit/frontend
sudo docker push dylanrit/frontend