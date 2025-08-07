FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    aria2 \
    qbittorrent-nox \
    p7zip-full \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80
EXPOSE 8080

CMD ["bash", "start.sh"]
