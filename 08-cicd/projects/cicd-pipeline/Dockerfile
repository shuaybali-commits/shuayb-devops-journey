# Base image
FROM python:3.12-slim

# Image metadata
LABEL maintainer="Shuayb Ali"
LABEL project="Hello Flask"
LABEL description="Docker Fundamentals Portfolio Project"
LABEL version="1.0.0"

# Working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application
COPY app.py .

# Run as a non-root user
RUN useradd --create-home appuser
USER appuser

# Default environment variables
ENV PORT=5000

# Application port
EXPOSE 5000

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:5000')" || exit 1

# Start application
CMD ["python", "app.py"]

