FROM davask/d-php-letsencrypt:latest
MAINTAINER davask <admin@davask.com>
USER root
LABEL dwl.app.cms="WordPress 5.5.1"

# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh \
./build/dwl/fix-wordpress-permissions.sh \
./build/dwl/init.sh \
/dwl/

# CMD ["/dwl/init.sh && service sendmail start && apache2ctl -D FOREGROUND"]

RUN chmod +x /dwl/init.sh && chown root:sudo -R /dwl
USER admin
