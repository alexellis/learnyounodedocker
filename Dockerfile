FROM ubuntu:latest
MAINTAINER alexellis2@gmail.com
USER root

# get wget/curl ready for pulling latest nodejs
# openssl to support secure http

RUN apt-get -qyy update && apt-get -qqy install\
 wget curl openssl

RUN wget -qO- https://deb.nodesource.com/setup_4.x | bash -

RUN rm -rf /var/lib/apt/lists/* 

# Install latest nodejs
RUN apt-get -y update && apt-get -qy install\
 nodejs

# install app
RUN npm install learnyounode -g

# sample user
RUN useradd learn -m -s /bin/bash

# set default password for logging in with bash (optional)
RUN echo learn:learn | chpasswd
user learn

ADD ./selector.sh /home/learn/

# We will mount exercises here
RUN mkdir /home/learn/testcases

ENTRYPOINT ["/bin/bash", "/home/learn/selector.sh"]
