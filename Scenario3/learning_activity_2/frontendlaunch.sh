#!/bin/bash

sudo /opt/bitnami/ctlscript.sh stop apache
sudo mv /opt/bitnami/apache2/scripts/ctl.sh /opt/bitnami/apache2/scripts/ctl.sh.disabled

cd /home/bitnami

sudo git clone https://github.com/Royjonespi/lightsail-3-tier
mv ./lightsail-3-tier/Scenario3/todo-mean .

cd /home/bitnami/todo-mean

sudo npm install --production
sudo npm install pm2@latest -g
