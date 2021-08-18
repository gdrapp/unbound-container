FROM alpine:3.14

RUN apk update \
    && apk upgrade \
    && apk add tini unbound

ENTRYPOINT ["/sbin/tini", "--", "/usr/sbin/unbound"]