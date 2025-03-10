FROM python:3.13-slim

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/src/app
# copy all files from the current directory to the container
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "llmcord.py"]
