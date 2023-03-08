FROM alpine

RUN apk update && apk upgrade
RUN apk add php81 php81-fpm php81-mysqli php81-xml php81-xmlreader
RUN apk add curl

ADD php.ini /etc/php81/php.ini
ADD php-fpm.conf /etc/php81/php-fpm.conf
ADD www.conf /etc/php81/php-fpm.d/www.conf

# RUN mkdir -p /var/www/localhost/htdocs
# RUN echo "<?php phpinfo(); ?>" >> /var/www/localhost/htdocs/info.php

# RUN wget https://wordpress.org/latest.tar.gz
# RUN tar -xzvf latest.tar.gz

CMD ["php-fpm81", "-F", "-R"]
