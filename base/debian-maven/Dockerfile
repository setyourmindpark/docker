FROM setyourmindpark/debian-oracle-jdk:8
MAINTAINER jaehunpark "setyourmindpark@gmail.com"

ENV MAVEN_VERSION=3.5.2

RUN wget --quiet --no-cookies http://apache.tt.co.kr/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -O /tmp/maven.tar.gz && \
    tar xzvf /tmp/maven.tar.gz -C /opt && \
    mv /opt/apache-maven-${MAVEN_VERSION} /opt/maven && \
    rm /tmp/maven.tar.gz

ENV M3_HOME /opt/maven
ENV PATH=${PATH}:${M3_HOME}/bin

CMD ["/bin/bash"] 
