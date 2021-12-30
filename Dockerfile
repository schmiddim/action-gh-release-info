FROM python:3.9-alpine

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY .  .
ENTRYPOINT ["python3",  "/app/main.py"]
