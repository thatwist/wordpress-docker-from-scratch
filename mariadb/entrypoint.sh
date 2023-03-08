#!/bin/bash

mkdir -p /var/lib/mysql
touch /var/log/mysql/error.log
chown -R mysql:mysql /var/log/mysql
chown -R mysql:mysql /var/lib/mysql

mysql_install_db --user=mysql --ldata=/var/lib/mysql/

mysqld_safe --datadir=/var/lib/mysql/ --log-error=/var/log/mysql/error.log --nowatch --bind-address 0.0.0.0 --skip_networking=0

#Define cleanup procedure
cleanup() {
    echo "Container stopped, performing cleanup..."
    mysqladmin shutdown
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

echo "mysqld is running"
tail -f /var/log/mysql/error.log &

#Wait
wait $!
