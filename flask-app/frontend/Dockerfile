FROM python:3.8
RUN pip3 install -r ~/Dev-Ops-Proj/flask-app/frontend/requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]