FROM ubuntu:16.04

MAINTAINER Name <brice.aminou@gmail.com>

RUN apt-get update && apt-get install -y git && apt-get install -y wget

RUN apt-get install -y python-pip

RUN git clone https://github.com/icgc-dcc/icgconnect.git /icgconnect
RUN cd icgconnect
RUN pip install /icgconnect

RUN pip install jsonschema

RUN mkdir /scripts
RUN wget https://raw.githubusercontent.com/baminou/dckr_song_generate_payload/master/tools/generate_song_payload.py -O /scripts/generate
RUN chmod +x /scripts/generate

ENV PATH="/scripts/:${PATH}"
