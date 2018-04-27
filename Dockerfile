FROM alpine

RUN apk update && apk add dnsmasq

CMD dnsmasq --user=root --no-daemon
