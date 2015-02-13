#!/bin/bash

ln -sf /data/bind/named.conf /etc/bind/named.conf
chown -R root:root /data/bind && chown bind:bind /data/bind/rndc.key
mkdir -p /var/log/named && chown bind:bind /var/log/named

service ssh start
service bind9 start
exec supervisord -n

