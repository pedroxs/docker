FROM frolvlad/alpine-oraclejdk8

MAINTAINER Joaquim Pedro Silveira <pedroxs@gmail.com>

ENV MAVEN_VERSION="3.3.9" \
    M2_HOME=/usr/lib/mvn

RUN cd /tmp && \
  wget "http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz" && \
  tar -zxvf "apache-maven-$MAVEN_VERSION-bin.tar.gz" && \
  mv "apache-maven-$MAVEN_VERSION" "$M2_HOME" && \
  ln -s "$M2_HOME/bin/mvn" /usr/bin/mvn && \
  rm /tmp/*

CMD ["mvn"]
