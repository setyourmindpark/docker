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


VOLUME /etc/nginx
EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


############################################################################################################
NOTE
you should copy volume path files of nginx before using nginx
example
1. docker run -d --name nginx setyourmindpark/nginx:apple
2. docker cp nginx:/etc/nginx <host path to store nginx data>
3. docker rm -f nginx
4. docker run -d --name nginx -v <host path you set on step 3>:/etc/nginx setyourmindpark/nginx:apple
//http://stackoverflow.com/questions/18861300/how-to-run-nginx-within-a-docker-container-without-halting
//https://www.linode.com/docs/web-servers/nginx/install-nginx-web-server-on-debian-8
############################################################################################################
