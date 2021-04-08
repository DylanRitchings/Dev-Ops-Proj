FROM python:3.8
RUN pip3 install -r requirements.txt
COPY . ./frontend
EXPOSE 5001
ENTRYPOINT ["python", "app.py"]