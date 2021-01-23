FROM golang:1-alpine AS build

ARG VERSION="0.0.7"
ARG CHECKSUM="53cc05b1dc43b036f6c4a636bfae2482d3769753033886c36537bccd86b563ad"

ADD https://github.com/hikhvar/ts3exporter/archive/v$VERSION.tar.gz /tmp/ts3exporter.tar.gz

RUN [ "$(sha256sum /tmp/ts3exporter.tar.gz | awk '{print $1}')" = "$CHECKSUM" ] && \
    tar -C /tmp -xf /tmp/ts3exporter.tar.gz && \
    mkdir -p /go/src/github.com/hikhvar && \
    mv /tmp/ts3exporter-$VERSION /go/src/github.com/hikhvar/ts3exporter && \
    cd /go/src/github.com/hikhvar/ts3exporter && \
      CGO_ENABLED=0 go build

RUN mkdir -p /rootfs/bin && \
      cp /go/src/github.com/hikhvar/ts3exporter/ts3exporter /rootfs/bin/ && \
    mkdir -p /rootfs/etc && \
      echo "nogroup:*:10000:nobody" > /rootfs/etc/group && \
      echo "nobody:*:10000:10000:::" > /rootfs/etc/passwd


FROM scratch

COPY --from=build --chown=10000:10000 /rootfs /

USER 10000:10000
EXPOSE 9189/tcp
ENTRYPOINT ["/bin/ts3exporter"]
