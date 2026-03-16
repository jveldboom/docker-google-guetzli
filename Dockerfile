FROM alpine:3.21 AS builder

RUN apk --no-cache add \
    libpng-dev \
    g++ \
    git \
    make

ARG VERSION="v1.0.1"

RUN git clone https://github.com/google/guetzli.git \
    --branch "${VERSION}" \
    --depth 1 \
    /opt/google/guetzli

RUN cd /opt/google/guetzli && make


FROM alpine:3.21

RUN apk --no-cache add \
    libpng \
    libstdc++ \
    libgcc

COPY --from=builder /opt/google/guetzli/bin/Release/guetzli /usr/local/bin/guetzli

WORKDIR /data

ENTRYPOINT ["guetzli"]
