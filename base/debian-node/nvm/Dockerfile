FROM setyourmindpark/debian-utf8
MAINTAINER jaehunpark "setyourmindpark@gmail.com"

ENV NVM_VERSION=v0.33.2

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y curl && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash && \
    echo ‘export NVM_DIR=“\$HOME/.nvm" [ -s “\$NVM_DIR/nvm.sh" ] \&\& . “\$NVM_DIR/nvm.sh”’ >> ~/.bash_profile

CMD ["/bin/bash"]
