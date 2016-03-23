#!/bin/bash

service sendmail start
echo "Sendmail Initialized";

chown www-data:www-data -R /var/www/html/*
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

echo "Wordpress Initialized";
