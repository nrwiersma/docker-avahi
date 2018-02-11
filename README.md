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

## Troubleshooting

#### DBus policy

You will likely need to add the following policy on the host in
`/etc/dbus-1/system.d/avahi.conf`:

```
<!DOCTYPE busconfig PUBLIC
"-//freedesktop//DTD D-Bus Bus Configuration 1.0//EN"
"http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
<busconfig>
    <policy user="root">
        <allow own="org.freedesktop.Avahi"/>
    </policy>
</busconfig>
```

#### Apparmor

If you see the following error message:

```
dbus_bus_get_private(): An AppArmor policy prevents this sender from sending this message to this recipient; type="method_call", sender="(null)" (inactive) interface="org.freedesktop.DBus" member="Hello" error name="(unset)" requested_reply="0" destinatio
WARNING: Failed to contact D-Bus daemon.
```

You need to run the container with the following option to turn off AppArmour
confinement of the contianer.

```
--security-opt apparmor:unconfined
```