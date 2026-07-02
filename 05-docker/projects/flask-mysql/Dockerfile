# Base image
FROM python:3.12-slim

# Image metadata
LABEL maintainer="Shuayb Ali"
LABEL project="Flask MySQL"
LABEL description="Multi-container Flask and MySQL Docker project"
LABEL version="1.0.0"

# Working directory
WORKDIR /app

# Install system dependencies required for mysqlclient
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY app.py .

# Run as non-root user
RUN useradd --create-home appuser
USER appuser

# Default environment variable
ENV PORT=5000

# Application port
EXPOSE 5000

# Start application
CMD ["python", "app.py"]
