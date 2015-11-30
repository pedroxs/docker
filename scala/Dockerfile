FROM ubuntu:trusty

MAINTAINER Joaquim Pedro Silveira <pedroxs@gmail.com>

ENV SCALA_VERSION 2.11.7
ENV SCALA_FILE scala-$SCALA_VERSION.deb
ENV SCALA_URL http://www.scala-lang.org/files/archive/$SCALA_FILE

WORKDIR /root

RUN \
  echo " ---> Installing helper tools" \
  && apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive \
     apt-get install -yq software-properties-common apt-transport-https wget curl git vim \
  \   
  && echo " ---> Installing Java" \
  && add-apt-repository -y ppa:webupd8team/java \
  && apt-get update -qq \
  && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
  && DEBIAN_FRONTEND=noninteractive \
     apt-get install -yq oracle-java8-installer \
  \
  && echo " ---> Installing Scala" \
  && wget $SCALA_URL \
  && dpkg -i $SCALA_FILE \
  \
  && echo " ---> Installing SBT" \
  && echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list \
  && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 \
  && apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive \
     apt-get install -yq sbt \
  \
  && echo " ---> Clean up" \
  && rm -f *.deb \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"] 
