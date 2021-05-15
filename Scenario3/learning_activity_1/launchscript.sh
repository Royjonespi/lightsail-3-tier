#! /bin/bash
sudo /opt/bitnami/ctlscript.sh stop apache
sudo mv /opt/bitnami/apache2/scripts/ctl.sh /opt/bitnami/apache2/scripts/ctl.sh.disabled

cd /home/bitnami
sudo git clone https://github.com/Royjonespi/lightsail-3-tier
mv ./aws-lightsail-3-tier/Scenario3/todo-mean .
cd /home/bitnami/todo-mean
sudo npm install --production

sudo cat << EOF >> /home/bitnami/todo-mean/.env
PORT=80
DB_URL=mongodb://tasks:tasks@localhost:27017/?authMechanism=SCRAM-SHA-1&authSource=tasks
EOF
