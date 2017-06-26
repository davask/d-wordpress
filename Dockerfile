FROM davask/d-php-letsencrypt:7.0-a2.4-d8.8
MAINTAINER davask <docker@davaskweblimited.com>
USER root
LABEL dwl.app.cms="WordPress"


# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh /dwl/get-wordpress.sh
COPY ./build/dwl/fix-wordpress-permissions.sh /dwl/fix-wordpress-permissions.sh
COPY ./build/dwl/init.sh /dwl/init.sh
USER admin

