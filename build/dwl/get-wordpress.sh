#! /bin/bash
if [ `find /home/${DWLC_USER_NAME}/files -mindepth 1 -maxdepth 1 | wc -l` == "0" ]; then
    wget https://wordpress.org/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz -O /tmp/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz;
    tar -xzvf /tmp/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz -C /home/${DWLC_USER_NAME}/files;
    mv /home/${DWLC_USER_NAME}/files/wp-config-sample.php /home/${DWLC_USER_NAME}/files/wp-config.php;
    rm /tmp/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz;
fi
