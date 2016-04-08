FROM davask/d-apache2-php5
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.app.framework="wordpress"

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y php5-gd

RUN apt-get install -y sendmail

RUN rm -rf /var/lib/apt/lists/*

COPY ./dwl-wordpress-php5-apache2-php.ini /etc/php5/apache2/php.ini
COPY ./dwl-init-3-wordpress.sh /tmp/dwl-init-3-wordpress.sh
