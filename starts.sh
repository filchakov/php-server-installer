#!/usr/bin/env bash

sudo service beanstalkd   start
sudo service memcached    start
sudo service nginx        start
sudo service php7.0-fpm   start
sudo service redis-server start
