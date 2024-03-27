FROM python:3.12-slim as builder

COPY . .

WORKDIR /


RUN pip install --no-cache-dir --upgrade -r /requirements.txt


CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "7860"]