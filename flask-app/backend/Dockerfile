FROM python:3.8
RUN cd /home/
RUN tree
#RUN pip3 install -r /home/$(whoami)/Dev-Ops-Proj/flask-app/backend/requirements.txt
RUN pip3 install -r ~/Dev-Ops-Proj/flask-app/backend/requirements.txt

EXPOSE 5001
ENTRYPOINT ["python", "app.py"]