FROM setyourmindpark/debian-utf8
MAINTAINER jaehunpark setyourmindpark@gmail.com

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y sudo && \
    apt-get install -y vim && \
    apt-get install -y curl && \
    curl -L https://toolbelt.treasuredata.com/sh/install-debian-jessie-td-agent2.sh | sh

RUN mkdir -p /var/origin && \
    cp -r /etc/td-agent /var/origin && \
    cp -r /opt/td-agent/embedded/lib/ruby/gems /var/origin

ADD entrypoint.sh /entrypoint.sh

VOLUME /etc/td-agent
VOLUME /var/log/td-agent
VOLUME /log
VOLUME /opt/td-agent/embedded/lib/ruby/gems

EXPOSE 24224
EXPOSE 9292

ENTRYPOINT ["/entrypoint.sh"]
