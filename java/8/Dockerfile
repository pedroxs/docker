FROM pedroxs/base

MAINTAINER Joaquim Pedro Silveira <pedroxs@gmail.com>

# Oracle Java version 8 from PPA webupd8team

RUN \
  echo " ----> Installing Java" \
  && add-apt-repository -y ppa:webupd8team/java \
  && apt-get update -qq \
  && echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
  && DEBIAN_FRONTEND=noninteractive \
     apt-get install -yq oracle-java8-installer \
  \
  && echo " ----> Clean up" \
  && rm -f *.deb \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists \
  && rm -rf /var/cache/oracle-jdk8-installer

CMD ["java"] 
