FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    tesseract-ocr libtesseract-dev poppler-utils ghostscript \
    && rm -rf /var/lib/apt/lists/*

# Set workdir
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source
COPY src/ ./src
COPY config/ ./config

CMD ["uvicorn", "src.api:app", "--host", "0.0.0.0", "--port", "8080"]
