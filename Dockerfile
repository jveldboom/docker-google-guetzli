FROM ubuntu:latest

WORKDIR /opt/google

RUN apt-get update && \
    apt-get install -y git build-essential libpng-dev libgflags-dev

RUN git clone https://github.com/google/guetzli.git

# https://github.com/google/guetzli/issues/74
RUN cd guetzli && git checkout 95ba421

RUN cd guetzli && make

WORKDIR /tmp

ENTRYPOINT ["/opt/google/guetzli/bin/Release/guetzli"]