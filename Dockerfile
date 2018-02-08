FROM ubuntu:16.04

MAINTAINER Name <brice.aminou@gmail.com>

RUN apt-get update && apt-get install -y git

RUN apt-get install -y python-pip

RUN git clone https://github.com/icgc-dcc/icgconnect.git /icgconnect
RUN cd icgconnect
RUN pip install /icgconnect
