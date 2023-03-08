#!/bin/bash

#nginx -g daemon off

nginx

echo "nginx is running"

tail -f /var/log/nginx/error.log
