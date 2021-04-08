FROM python:3.8
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5001
ENTRYPOINT ["python", "app.py"]