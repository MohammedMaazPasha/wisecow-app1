FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

# Install system dependencies (if needed)
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
