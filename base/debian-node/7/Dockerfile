FROM setyourmindpark/debian-utf8
MAINTAINER jaehunpark "setyourmindpark@gmail.com"

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_7.x | bash - && apt-get install -y nodejs

CMD ["/bin/bash"]
