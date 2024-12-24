#!/bin/bash

set -e

mkdir -p binaries

PYTHON_URL="https://www.python.org/ftp/python/3.11.10/Python-3.11.10.tgz"
ODBC_URL="https://download.microsoft.com/download/e/5/4/e5425e4c-33e7-4e7a-8dc1-f94cc46db1fa/msodbcsql18_18.4.1.1-1_amd64.deb"
RABBITMQ_URL="https://github.com/rabbitmq/rabbitmq-server/releases/download/v4.0.1/rabbitmq-server-generic-unix-4.0.1.tar.xz"
APACHE_URL="https://downloads.apache.org/httpd/httpd-2.4.62.tar.gz"
MEMCACHED_URL="https://memcached.org/files/memcached-1.6.31.tar.gz"

curl -L $PYTHON_URL -o binaries/python-3.11.10.tar.gz
curl -L $ODBC_URL -o binaries/msodbcsql18_18.4.1.1-1_amd64.deb
curl -L $RABBITMQ_URL -o binaries/rabbitmq-server_4.0.1.tar.xz
curl -L $APACHE_URL -o binaries/httpd-2.4.62.tar.gz
curl -L $MEMCACHED_URL -o binaries/memcached-1.6.31.tar.gz

echo "All binaries downloaded successfully into the binaries directory."