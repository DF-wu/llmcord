FROM python:3.13-slim

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY requirements.txt .
COPY llmcord.py .
COPY config.yaml .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "llmcord.py"]
