#! /bin/bash
if [ `find /home/${DWLC_USER_NAME}/files -mindepth 1 -maxdepth 1 | wc -l` == "0" ]; then
    sudo cp -rdf /dwl/default/var/www/html/* /home/${DWLC_USER_NAME}/files;
    sudo cp -rdf /dwl/default/var/www/html/.* /home/${DWLC_USER_NAME}/files;
    sudo mv /home/${DWLC_USER_NAME}/files/wp-config-sample.php /home/${DWLC_USER_NAME}/files/wp-config.php;
fi
