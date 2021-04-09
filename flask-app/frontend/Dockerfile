FROM python:3.8
WORKDIR /app
#Copy file into image
COPY ./requirements.txt .
RUN pip3 install -r ~/Dev-Ops-Proj/flask-app/frontend/requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]