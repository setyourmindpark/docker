FROM setyourmindpark/debian-utf8

RUN apt-get install -y vim && \
    apt-get install -y curl && \
    echo deb http://httpredir.debian.org/debian jessie-backports main | \
    tee /etc/apt/sources.list.d/backports.list && \
    curl https://haproxy.debian.net/bernat.debian.org.gpg | \
    apt-key add - && \
    echo deb http://haproxy.debian.net jessie-backports-1.8 main | \
    tee /etc/apt/sources.list.d/haproxy.list && \
    apt-get update && \
    apt-get install -y haproxy=1.8.\* -t jessie-backports

RUN mkdir /var/origin && \
    cp -r /etc/haproxy /var/origin

ADD entrypoint.sh /entrypoint.sh

VOLUME /etc/haproxy

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]