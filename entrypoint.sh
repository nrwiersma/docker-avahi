#!/bin/sh

sed -i '/rlimit-nproc/d' /etc/avahi/avahi-daemon.conf
exec avahi-daemon
