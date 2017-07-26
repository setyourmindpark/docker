FROM setyourmindpark/debian-utf8
MAINTAINER jaehunpark "setyourmindpark@gmail.com"

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y curl && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash && \
    echo ‘export NVM_DIR=“\$HOME/.nvm" [ -s “\$NVM_DIR/nvm.sh" ] \&\& . “\$NVM_DIR/nvm.sh”’ >> ~/.bash_profile

CMD ["/bin/bash"]
