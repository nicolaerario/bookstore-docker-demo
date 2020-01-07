FROM python:3.7

# Set Env variables
ENV PITHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

LABEL Name=bookstore Version=0.1.0

WORKDIR /app
ADD . /app

# Using pip:
RUN python3 -m pip install -r requirements.txt
#CMD ["python3", "-m", "bookstore"]
