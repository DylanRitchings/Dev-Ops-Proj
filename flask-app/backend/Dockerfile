FROM python:3.8

WORKDIR /app
#Copy file into image
COPY ./requirements.txt .
RUN pip3 install -r requirements.txt

EXPOSE 5001
ENTRYPOINT ["python", "app.py"]