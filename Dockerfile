FROM ubuntu:18.04
MAINTAINER: Hanibrown <hm98127@naver.com>

ENV DEVIAN_FRONTEND=noninteractive
RUN apt-get udpate
RUN apt-get install -y apache2
RUN apt-get install -y softare-properties-common
RUN apt-get-repository ppa:ondref/php
RUN apt-get update
RUN apt-get install -y php5.6
RUN apt-get install -y php5.6-mysql

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
