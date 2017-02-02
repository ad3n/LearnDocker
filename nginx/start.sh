#!/usr/bin/env bash
set -e

for name in FASTCGI_PORT FASTCGI_HOST
do
    eval value=\$$name
    sed -i "s|\${${name}}|${value}|g" /etc/nginx/conf.d/php-fpm.conf
done
