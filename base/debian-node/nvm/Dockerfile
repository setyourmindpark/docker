FROM setyourmindpark/debian-utf8
MAINTAINER jaehunpark "setyourmindpark@gmail.com"

ENV NVM_VERSION=v0.33.2

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y curl && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash && \
    echo 'export NVM_DIR="$HOME/.nvm"' >> $HOME/.bashrc && \
    echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> $HOME/.bashrc

RUN mkdir /var/origin && \
    cp -r $HOME/.nvm /var/origin && \
    cp $HOME/.bashrc /var/origin
ADD entrypoint.sh /var/origin/entrypoint.sh

VOLUME /root
ENTRYPOINT ["/var/origin/entrypoint.sh"]
