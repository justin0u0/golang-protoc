FROM --platform=${TARGETPLATFORM} golang:1.18

ARG PROTOBUF_VERSION=3.20.1
ARG PROTOBUF_ARCH
ARG TARGETPLATFORM

RUN apt-get update && apt-get install -y unzip \
  && case ${TARGETPLATFORM} in \
      "linux/amd64") PROTOBUF_ARCH=x86_64   ;; \
      "linux/arm64") PROTOBUF_ARCH=aarch_64 ;; \
  esac \
  && wget -q -O protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOBUF_VERSION}/protoc-${PROTOBUF_VERSION}-linux-${PROTOBUF_ARCH}.zip \
  && unzip -o protoc.zip -d /usr/local \
  && rm -f /usr/local/readme.txt \
  && rm -f protoc.zip
