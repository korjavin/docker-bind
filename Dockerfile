FROM korjavin/korjavin-base
MAINTAINER korjavin@gmail.com

RUN  apt-get update && apt-get install -y bind9

ADD start /start
RUN chmod 755 /start

EXPOSE 53/udp
VOLUME ["/data"]
CMD ["/start"]
