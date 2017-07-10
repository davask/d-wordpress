# dockerfile

## Exposed port

- 22
- 80
- 443
## Default ENV values

- DWL_LOCAL_LANG: 'en_US:en'
- DWL_LOCAL: 'en_US.UTF-8'
- DWL_USER_NAME: 'username'
- DWL_USER_PASSWD: 'secret'
- DWL_USER_ID: '1000'
- DWL_SUDO_USER: 'false'
- DWL_SSH_ACCESS: 'false'
- APACHE_LOCK_DIR: '/var/lock/apache2'
- APACHE_PID_FILE: '/var/run/apache2.pid'
- APACHE_RUN_USER: 'www-data'
- APACHE_RUN_GROUP: 'www-data'
- APACHE_LOG_DIR: '/var/log/apache2'
- APACHE_RUN_DIR: '/var/run/apache2'
- DWL_HTTP_SERVERADMIN: 'admin@localhost'
- DWL_HTTP_DOCUMENTROOT: '/var/www'
- DWL_HTTP_SHIELD: 'false'
- DWL_SSLKEY_C: 'EU'
- DWL_SSLKEY_ST: 'France'
- DWL_SSLKEY_L: 'Vannes'
- DWL_SSLKEY_O: 'davask web limited - docker container'
- DWL_SSLKEY_CN: 'davaskweblimited.com'
- APACHE_SSL_DIR: '/etc/apache2/ssl'
- DWL_CERTBOT_EMAIL: 'admin@localhost'
- DWL_CERTBOT_DEBUG: 'true'
- DWL_PHP_DATETIMEZONE: 'Europe/Paris'
## Available volumes

- /home/host
## LABEL

- dwl.server.os="php-letsencrypt 4.4.2-p7.0-a2.4-u16.04"

- dwl.server.base="wordpress 4.4.2-p7.0-a2.4-u16.04"

- dwl.server.http="apache 4.4.2-p7.0-a2.4-u16.04"

## EXTRA

#### comment

- automatic configuration are handle for filename as [0-9]{4}\-subdomain\.domain\.tld\-[0-9]{2,3}\.conf\.dwl
- On start all *.conf in /etc/apache2/sites-available are enabled

## virtualhost automatic conf

```bash

# ServerAdmin
# DocumentRoot
# ServerName
# ServerAlias

```


- [test certificat](# https://www.ssllabs.com/ssltest/analyze.html?d=<sub.domain.tld>&latest
)
