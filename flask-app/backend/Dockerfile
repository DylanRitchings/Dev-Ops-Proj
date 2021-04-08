FROM python:3.8
#WORKDIR /home/
#RUN cd home
#RUN ls
#RUN ${whoami}
#WORKDIR /home/${whoami}/Dev-Ops-Proj/flask-app/backend/
#RUN pwd
#RUN ls
#RUN pip3 install -r /home/$(whoami)/Dev-Ops-Proj/flask-app/backend/requirements.txt
WORKDIR /app
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

EXPOSE 5001
ENTRYPOINT ["python", "app.py"]