FROM node:0.12
MAINTAINER alexellis2@gmail.com
USER root

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
