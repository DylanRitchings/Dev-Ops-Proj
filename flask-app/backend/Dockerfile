FROM python:3.8
RUN pip3 install -r /Dev-Ops-Proj/flask-app/backend/requirements.txt
COPY . .
EXPOSE 5001
ENTRYPOINT ["python", "app.py"]