FROM davask/d-apache2-php5
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.app.framework="wordpress"

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y php5-gd
RUN apt-get install -y sendmail

COPY ./dwl-init-3-wordpress.sh /tmp/dwl-init-3-wordpress.sh
