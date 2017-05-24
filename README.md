# cron4backups
[![N|Solid](http://core0.staticworld.net/images/article/2015/07/docker-logo-copy-100594460-small.idge.png)](https://hub.docker.com/)

repo linked to docker in:

https://github.com/AmalgamaTech/cron4backups

## Actual version: 0.1
### 0.1 [20170424]
> -Crea backup automáticos para db mysql

> -Create automatic backups for mysql databases

### install

> -Pull image

> -docker build -t mycronjob .

> - OR

> -docker pull javierpozuelo/cron4backups

> -
docker run -d -it --name cronjob \
-v /[YOUR ROUTE]/cron:/cronresources/crontemp \
-v /[YOUR ROUTE]/backuplog:/var/log/cronlog \
-v /[YOUR ROUTE]/scripts:/cronresources/scripts \
-v /[YOUR ROUTE]/backups:/cronresources/backups \
-e MYSQL_ROOT_PASSWORD="THEPASS" [YOUR IMAGE NAME]

> after docker run exec:

> -docker exec -it [YOUR IMAGE NAME] /bin/bash

> we are into the docker...

> -mv /etc/crontab /cronresources/crontemp

> this is to have the crontab's file control from with in the principal filesystem 

> -cd /etc

> -ln -s /cronresources/crontemp/crontab

> for cron run, exec:

> -cron
