#Dockerfile

# This is stage 1 - Build
FROM python:3.14-slim AS build

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libmariadb-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install flask mysqlclient

# This is stage 2 - Production

FROM python:3.14-slim

WORKDIR /app

COPY --from=build /app /app

EXPOSE 5000

CMD ["python", "app.py"]
