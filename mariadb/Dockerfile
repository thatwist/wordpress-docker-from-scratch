FROM alpine

RUN apk update && apk add mariadb mariadb-client

#RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql/

# ENV TERM xterm

# ADD my.cnf /etc/mysql/my.cnf

#RUN mkdir -p /var/log/mysql && touch /var/log/mysql/error.log && chown -R mysql:mysql /var/log/mysql

VOLUME /var/lib/mysql
VOLUME /var/log/mysql

EXPOSE 3306

ADD entrypoint.sh /scripts/entrypoint.sh

RUN chmod +x /scripts/entrypoint.sh

ENTRYPOINT ["sh", "/scripts/entrypoint.sh"]

HEALTHCHECK --start-period=10s \
  CMD mariadb -e 'SELECT @@datadir;' || exit 1

