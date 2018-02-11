FROM alpine:3.6

MAINTAINER Nicholas Wiersma <nick@wiersma.co.za>

RUN apk add --no-cache avahi

RUN mkdir -p /var/run/dbus

VOLUME /var/run/dbus
VOLUME /etc/avahi/services

EXPOSE 5353/udp

ENTRYPOINT avahi-daemon --no-drop-root
