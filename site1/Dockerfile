FROM node:latest

MAINTAINER Juan Carlos Perez <perezpardojc@gmail.com>

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []