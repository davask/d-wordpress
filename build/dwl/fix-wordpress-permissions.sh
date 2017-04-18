#!/bin/bash
#
# This script configures WordPress file permissions based on recommendations
# from http://codex.wordpress.org/Hardening_WordPress#File_permissions
#
# Author: Michael Conigliaro <mike [at] conigliaro [dot] org>
#

# reset to safe defaults
find /home/${DWLC_USER_NAME}/files -exec chown ${DWLC_USER_NAME}:${DWLC_USER_NAME} {} \;
find /home/${DWLC_USER_NAME}/files -type d -exec chmod 775 {} \;
find /home/${DWLC_USER_NAME}/files -type f -exec chmod 664 {} \;

# allow wordpress to manage wp-config.php (but prevent world access)
HTTPDUSER=`ps axo user,comm | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1`;
if [ -f /home/${DWLC_USER_NAME}/files/wp-config.php ]; then
    chgrp ${HTTPDUSER} /home/${DWLC_USER_NAME}/files/wp-config.php
    chmod 660 /home/${DWLC_USER_NAME}/files/wp-config.php
fi
# allow wordpress to manage wp-content
if [ -d /home/${DWLC_USER_NAME}/files/wp-content ]; then
    find /home/${DWLC_USER_NAME}/files/wp-content -exec chgrp ${HTTPDUSER} {} \;
    find /home/${DWLC_USER_NAME}/files/wp-content -type d -exec chmod 775 {} \;
    find /home/${DWLC_USER_NAME}/files/wp-content -type f -exec chmod 664 {} \;
fi
