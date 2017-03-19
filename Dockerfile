FROM ubuntu:latest

WORKDIR /opt/google

RUN apt-get update && \
    apt-get install -y git build-essential libpng-dev libgflags-dev

RUN git clone https://github.com/google/guetzli.git

RUN cd guetzli && make

WORKDIR /tmp

ENTRYPOINT ["/opt/google/guetzli/bin/Release/guetzli"]