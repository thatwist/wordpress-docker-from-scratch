FROM alpine

RUN apk update && apk upgrade
RUN apk add nginx

ADD nginx.conf /etc/nginx/nginx.conf

ADD entrypoint.sh /scripts/entrypoint.sh
RUN chmod +x /scripts/entrypoint.sh

ENTRYPOINT [ "sh", "/scripts/entrypoint.sh" ]
