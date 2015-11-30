FROM ubuntu:trusty

MAINTAINER Joaquim Pedro Silveira <pedroxs@gmail.com>

WORKDIR /root

RUN \
  echo "===> Installing helper tools" \
  && apt-get update -qq \
  && DEBIAN_FRONTEND=noninteractive \
     apt-get install -yqq software-properties-common apt-transport-https wget curl git vim \
  \
  && echo "===> Clean up" \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"] 
