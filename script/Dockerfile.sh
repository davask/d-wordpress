#/usr/bin/env bash

branch=${1};
parentBranch=${2};
rootDir=${3};
buildDir=${4};

##############
# Dockerfile #
##############

echo "FROM davask/d-php-letsencrypt:${parentBranch}
MAINTAINER davask <docker@davaskweblimited.com>
LABEL dwl.app.cms=\"WordPress\"" > ${rootDir}/Dockerfile
echo "

RUN wget https://wordpress.org/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz -O /dwl/default/var/www/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz
RUN rm -rdf /dwl/default/var/www/html
RUN tar -xzvf /dwl/default/var/www/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz -C /dwl/default/var/www
RUN rm /dwl/default/var/www/wordpress-${WORDPRESS_VERSION:-4.4.2}.tar.gz
RUN mv /dwl/default/var/www/wordpress /dwl/default/var/www/html

# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh /dwl/get-wordpress.sh
COPY ./build/dwl/fix-wordpress-permissions.sh /dwl/fix-wordpress-permissions.sh
COPY ./build/dwl/init.sh /dwl/init.sh
" >> ${rootDir}/Dockerfile

echo "Dockerfile generated with wordpress";
