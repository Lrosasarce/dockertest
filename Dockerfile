FROM php:7.2-apache
ENV APP_HOME /var/www/html

RUN apt-get update

RUN a2enmod rewrite

RUN mkdir -p /opt/data/public && \
rm -r /var/www/html && \
ln -s /opt/data/public $APP_HOME


WORKDIR $APP_HOME
