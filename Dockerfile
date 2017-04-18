FROM davask/d-php-letsencrypt:5.6-a2.4-u14.04
MAINTAINER davask <docker@davaskweblimited.com>
LABEL dwl.app.cms="WordPress"

# Copy instantiation specific file
COPY ./build/dwl/fix-wordpress-permissions.sh /dwl/fix-wordpress-permissions.sh
COPY ./build/dwl/init.sh /dwl/init.sh

