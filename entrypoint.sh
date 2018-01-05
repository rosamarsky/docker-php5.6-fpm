#!/bin/sh
sed -i -e "s/NR_APP_NAME/${NR_APP_NAME}/g" /etc/php/5.6/cli/conf.d/20-newrelic.ini
sed -i -e "s/NR_APP_NAME/${NR_APP_NAME}/g" /etc/php/5.6/fpm/conf.d/20-newrelic.ini
sed -i -e "s/NR_LICENSE_KEY/${NR_LICENSE_KEY}/g" /etc/php/5.6/cli/conf.d/20-newrelic.ini
sed -i -e "s/NR_LICENSE_KEY/${NR_LICENSE_KEY}/g" /etc/php/5.6/fpm/conf.d/20-newrelic.ini
/usr/sbin/php-fpm5.6 -R
