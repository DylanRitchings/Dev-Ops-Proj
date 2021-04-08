FROM python:3.8
RUN ls
RUN pwd
RUN pip3 install -r /home/ubuntu/Dev-Ops-Proj/flask-app/frontend/requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]