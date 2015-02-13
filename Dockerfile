FROM jwdaniel/sshd:latest
MAINTAINER Jian-Wei Wang

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y supervisor bind9
VOLUME /data
ADD startup.sh /startup.sh
RUN chmod 755 /startup.sh

EXPOSE 22 53 53/udp
CMD ["/startup.sh"]
