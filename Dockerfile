FROM python:3.7-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y 
RUN pip install -U pip
RUN pip install --upgrade setuptools
RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]