# Docker-bind9

Dockerized BIND9 DNS service, built on top of [jwdaniel/sshd:latest](https://registry.hub.docker.com/jwdaniel/sshd/) images.

## Installed Packages

Base:
  - [Minimal core of Ubuntu - trusty (14.04LTS)](http://packages.ubuntu.com/trusty/ubuntu-minimal)

Packages:
  - [bind9](http://packages.ubuntu.com/trusty/bind9)

## Configurations

bind9:
  - config file: /data/bind/named.conf
  - db files: /data/bind/db/db.*

## Run example

```bash
$ sudo docker run --name bind9 -d -P -p 53:53 -p 53:53/udp -v data:/data jwdaniel/bind9

$ dig @localhost example.net

```

