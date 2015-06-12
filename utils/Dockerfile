FROM ubuntu:trusty

MAINTAINER Joaquim Pedro Silveira <pedroxs@gmail.com>

RUN apt-get update \
	&& apt-get install -y dnsutils wget curl git vim lynx \
	&& rm -rf /var/lib/apt/lists/*

RUN curl -O http://stedolan.github.io/jq/download/linux64/jq \
  && mv jq /usr/bin/jq \
  && chmod +x /usr/bin/jq

WORKDIR /root

ENTRYPOINT ["/bin/bash"] 
