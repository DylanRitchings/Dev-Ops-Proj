FROM python:3.8
RUN ls
RUN pwd
RUN pip install -r ~/Dev-Ops-Proj/flask-app/backend/requirements.txt
COPY . .
EXPOSE 5001
ENTRYPOINT ["python", "app.py"]