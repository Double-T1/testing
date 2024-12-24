#!/bin/bash

set -e

function install_python {
    echo "Installing Python 3.11.10..."
    tar -xvzf binaries/python-3.11.10.tar.gz
    cd Python-3.11.10
    ./configure
    make
    sudo make install
    cd ..
}

function install_odbc {
    echo "Installing Microsoft ODBC Driver..."
    sudo dpkg -i binaries/msodbcsql18_18.4.1.1-1_amd64.deb
    sudo apt-get install -f -y
}

function install_rabbitmq {
    echo "Installing RabbitMQ 4.0.1..."
    tar -xvJf binaries/rabbitmq-server_4.0.1.tar.xz
    cd rabbitmq-server-4.0.1
    sudo ./install.sh
    cd ..
}

function install_apache {
    echo "Installing Apache HTTP Server..."
    tar -xvzf binaries/httpd-2.4.62.tar.gz
    cd httpd-2.4.62
    ./configure
    make
    sudo make install
    cd ..
}

function install_memcached {
    echo "Installing Memcached 1.6.31..."
    tar -xvzf binaries/memcached-1.6.31.tar.gz
    cd memcached-1.6.31
    ./configure
    make
    sudo make install
    cd ..
}

install_python
install_odbc
install_rabbitmq
install_apache
install_memcached

echo "All software installed successfully."