FROM python:3.8
COPY . .
RUN ls
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]