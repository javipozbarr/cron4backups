# Instructions
# after docker run exec:
# docker exec -it [YOUR IMAGE NAME] /bin/bash
# mv /etc/crontab /cronresources/crontemp
# cd /etc
# ln -s /cronresources/crontemp/crontab
# for cron run:
# cron

FROM ubuntu:latest
FROM mysql:5
MAINTAINER javi@amalgamatech.com

# install cron and vim
RUN apt-get update && apt-get install -y \
  cron vim

RUN mkdir -p /cronresources/crontemp
RUN mkdir -p /cronresources/scripts
RUN mkdir -p /cronresources/backups
