FROM ubuntu:16.04

RUN apt-get update && apt-get -y install \
    awscli \
    git \
    vim  \
    netcat \
    python-dev \
    python-pip \
    build-essential

COPY . /tmp/

WORKDIR /tmp/app

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "server.py"]
