FROM alpine

RUN apk update && apk add dnsmasq bind-tools

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
