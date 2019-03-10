#!/bin/bash


#
# On lance mysqld
#
mysqld &

#
# On attend 10s que le serveur mysql soit lancer avant de créer la base
#

sleep 30s


#
# On créé la base + user
#
PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c 14;echo)

mysql -h localhost -u root -e "CREATE DATABASE $MYSQL_DATABASE_NAME"
mysql -h localhost -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE_NAME.* TO '$MYSQL_USERNAME@%' IDENTIFIED BY '$PASSWORD'"

echo $PASSWORD

sleep infinity
