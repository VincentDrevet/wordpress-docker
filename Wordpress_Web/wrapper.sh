#!/bin/bash

echo "lancement nginx"
/usr/sbin/nginx &

echo "php-fpm"
/usr/sbin/php-fpm7.2 -F


