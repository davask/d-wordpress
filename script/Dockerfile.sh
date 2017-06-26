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
USER root
LABEL dwl.app.cms=\"WordPress\"" > ${rootDir}/Dockerfile
echo "

# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh /dwl/get-wordpress.sh
COPY ./build/dwl/fix-wordpress-permissions.sh /dwl/fix-wordpress-permissions.sh
COPY ./build/dwl/init.sh /dwl/init.sh
USER admin
" >> ${rootDir}/Dockerfile

echo "Dockerfile generated with wordpress";
