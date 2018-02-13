FROM node:latest

MAINTAINER Juan Carlos Perez <perezpardojc@gmail.com>

RUN npm install -g json-server

#WORKDIR /data
#VOLUME /data

RUN mkdir /data
COPY /data /data


ADD run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 81

#ENTRYPOINT ["bash", "/run.sh"]
#CMD []

CMD [ "bash", "/run.sh" ]