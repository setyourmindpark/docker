FROM setyourmindpark/debian-utf8
MAINTAINER jaehunpark "setyourmindpark@gmail.com"

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y vim

RUN echo 'deb http://nginx.org/packages/debian/ jessie nginx' >> /etc/apt/sources.list && \
    echo 'deb-src http://nginx.org/packages/debian/ jessie nginx' >> /etc/apt/sources.list && \
    curl http://nginx.org/keys/nginx_signing.key | apt-key add - && \
    apt-get update && \
    apt-get install -y nginx

RUN mkdir /var/origin && \
    cp -r /etc/nginx /var/origin

ADD entrypoint.sh /entrypoint.sh

VOLUME /etc/nginx

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
