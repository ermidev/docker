FROM ubuntu: 14.04

MAINTAINER Ermias Kidane "ermidev@gmail.com"

ENV REFRESHED_AT 2016-06-01

RUN apt-get update -yqq && apt-get -yqq install ruby ruby-dev build-essentail redis-tools

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD [ "/opt/webapp/bin/webapp" ]