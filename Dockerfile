FROM davask/d-php-letsencrypt:7.0-a2.4-d8.8
MAINTAINER davask <docker@davaskweblimited.com>
USER root
LABEL dwl.app.cms="WordPress"


RUN wget https://wordpress.org/wordpress-4.4.2.tar.gz -O /dwl/default/var/www/wordpress-4.4.2.tar.gz
RUN rm -rdf /dwl/default/var/www/html
RUN tar -xzvf /dwl/default/var/www/wordpress-4.4.2.tar.gz -C /dwl/default/var/www
RUN rm /dwl/default/var/www/wordpress-4.4.2.tar.gz
RUN mv /dwl/default/var/www/wordpress /dwl/default/var/www/html

# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh /dwl/get-wordpress.sh
COPY ./build/dwl/fix-wordpress-permissions.sh /dwl/fix-wordpress-permissions.sh
COPY ./build/dwl/init.sh /dwl/init.sh
USER admin

