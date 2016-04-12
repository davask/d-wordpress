#!/bin/bash

service sendmail start
echo "Sendmail Initialized";

ln -s ${DWL_USER_DIR}/${DWL_APP_DIR} /var/www/html

chown :www-data -R /var/www/html
find /var/www/html -type d -exec chmod 775 {} \;
find /var/www/html -type f -exec chmod 664 {} \;

echo "Wordpress Initialized";
