FROM python:3

# Set Env variables
ENV PITHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

LABEL Name=bookstore Version=0.2.0

WORKDIR /app
COPY requirements.txt /app/

# Install requirements using pip:
RUN pip install -r requirements.txt

COPY . /app/
