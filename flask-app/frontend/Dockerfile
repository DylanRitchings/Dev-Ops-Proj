FROM python:3.8
COPY . .
RUN ls
RUN cd ~
RUN ls
RUN pip3 install -r /home/ubuntu/Dev-Ops-Proj/flask-app/frontend/requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]