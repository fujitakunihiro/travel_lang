FROM python:3.12-slim

WORKDIR /app

ENV HOST=0.0.0.0 \
    PORT=8000 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

COPY index.html server.py ./

EXPOSE 8000

CMD ["python", "server.py"]
