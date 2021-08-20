FROM alpine:3.14

RUN apk update \
    && apk upgrade \
    && apk add tini unbound

RUN wget -P /etc/unbound -S https://www.internic.net/domain/named.root

ENTRYPOINT ["/sbin/tini", "--", "/usr/sbin/unbound"]