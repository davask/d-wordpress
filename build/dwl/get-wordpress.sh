#!/bin/bash

if [ `sudo find /home/${DWLC_USER_NAME}/files -mindepth 1 -maxdepth 1 | wc -l` == "0" ]; then
    sudo wget https://wordpress.org/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz -O /tmp/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz;
    sudo tar -xzvf /tmp/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz -C /home/${DWLC_USER_NAME}/files;
    sudo mv /home/${DWLC_USER_NAME}/files/wp-config-sample.php /home/${DWLC_USER_NAME}/files/wp-config.php;
    sudo rm /tmp/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz;
fi
