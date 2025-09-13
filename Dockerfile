FROM python:3.13-slim

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY * .

RUN pip install --no-cache-dir -r requirements.txt

# 支援環境變數擴展 VISION_MODEL_TAGS
# 使用方式：MY_ADDED_MODEL="glm-4.5v,qwen-vl,custom-vision"
ENV MY_ADDED_MODEL=""

CMD ["python", "llmcord.py"]
