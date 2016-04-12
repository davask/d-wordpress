FROM davask/d-apache2-php5
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.app.framework="wordpress"

RUN apt-get update
RUN apt-get install -y php5-gd
RUN apt-get install -y sendmail
RUN rm -rf /var/lib/apt/lists/*

# Copy instantiation specific file
COPY ./wordpress.sh $DWL_INIT_DIR/$DWL_INIT_COUNT-wordpress.sh
# update counter for next container
ENV DWL_INIT_COUNT $(($DWL_INIT_COUNT+1))
