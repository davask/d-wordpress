FROM davask/d-php-letsencrypt:latest
MAINTAINER davask <admin@davask.com>
USER root
LABEL dwl.app.cms="WordPress 5.5.1"

RUN apt-get update && apt-get install -y dos2unix

# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh \
./build/dwl/fix-wordpress-permissions.sh \
./build/dwl/init.sh \
/dwl/

RUN /usr/bin/dos2unix /dwl/*

# CMD ["/dwl/init.sh && service sendmail start && apache2ctl -D FOREGROUND"]
# CMD ["/bin/bash /dwl/init.sh"]

RUN chmod +x /dwl/init.sh && chown root:sudo -R /dwl
USER admin
