# This is the Docker file for ShowDate project.

# Stage 1 base image 1.01 gb
FROM python:3.7 AS builder

WORKDIR /app

COPY requirement.txt .

RUN pip install -r requirement.txt

# ---------------------------------------
# Stage 2 base image 125 mb
FROM python:3.7-slim

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.7/site-packages/ /usr/local/lib/python3.7/site-packages/

COPY . .

# Run the application / project.
ENTRYPOINT ["python", "run.py"]