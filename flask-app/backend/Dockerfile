FROM python:3.8
COPY . .
RUN ls
RUN cd ~
RUN ls
RUN pip install -r /home/ubuntu/Dev-Ops-Proj/flask-app/backend/requirements.txt

EXPOSE 5001
ENTRYPOINT ["python", "app.py"]