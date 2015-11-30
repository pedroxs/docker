# VERSION: 0.1
# DESCRIPTION: Run firefox
# USAGE:
#   # Build image
#   docker build -t firefox .
#
#   # Run image
#   docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY firefox

# Base image
FROM ubuntu:14.04

# Add non root user
RUN adduser --disabled-password --gecos '' firefox \
  && adduser firefox video \
  && adduser firefox audio

# Include these to add user as sudoer  
#  && adduser firefox sudo \
#  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Install java, java-browser-plugin and ca-certificates
RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install \
  ca-certificates \
  ca-certificates-java \
  openjdk-7-jre \
  icedtea-7-plugin
#  sudo \

# Install some fonts
RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install \
  fonts-ipafont-gothic \
  xfonts-100dpi \
  xfonts-75dpi \
  xfonts-cyrillic \
  xfonts-scalable

# Install firefox and some libs dependencies
RUN apt-get -qqy update \
  && apt-get -qqy install \
#  dbus-X11 \
  firefox \
  libcanberra-gtk-module \
  libexif-dev

# ENV DISPLAY :0
USER firefox
WORKDIR /home/firefox
CMD firefox

# Old stuff
#XSOCK=/tmp/.X11-unix
#XAUTH=/tmp/.docker.xauth
#xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
#docker run --rm -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH firefox
