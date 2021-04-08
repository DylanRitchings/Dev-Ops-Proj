FROM python:3.8
RUN cd /home/
RUN tree
#RUN pip3 install -r /home/$(whoami)/Dev-Ops-Proj/flask-app/frontend/requirements.txt
RUN pip3 install -r ~/Dev-Ops-Proj/flask-app/frontend/requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]