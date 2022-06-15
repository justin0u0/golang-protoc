# golang-protoc

Docker image from base image golang with protocol buffer installed.

## Usage

```bash
docker buildx build --build-arg PROTOBUF_VERSION={protobuf-version} --platform=linux/arm64,linux/amd64 -t {your-repo}:{your-tag} . --push
```

## Image

See [https://hub.docker.com/r/justin0u0/golang-protoc](https://hub.docker.com/r/justin0u0/golang-protoc).

