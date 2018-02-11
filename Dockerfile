FROM alpine:3.6

MAINTAINER Nicholas Wiersma <nick@wiersma.co.za>

RUN apk add --no-cache avahi

COPY entrypoint.sh /entrypoint.sh

EXPOSE 5353/udp

ENTRYPOINT ["/entrypoint.sh"]
