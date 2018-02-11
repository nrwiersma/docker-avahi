![Logo](http://svg.wiersma.co.za/github/project?lang=docker&title=avahi)

A lightweight Docker container with mDNS server.

## Ports

Ports 5353/udp are exposed and should be mounted to the host ports

## Example

```
    docker run --detach
               -v /var/run/dbus:/var/run/dbus
               -v /etc/avahi/services:/etc/avahi/services
               -p 5353:5353/udp
               nrwiersma/avahi:latest
```
