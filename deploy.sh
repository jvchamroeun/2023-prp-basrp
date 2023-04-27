#!/bin/bash

set -uex

PACKAGE_NAME=nginx

sudo apt-get install -y ${PACKAGE_NAME}

# grep root /etc/nginx/sites-enabled/default
sudo cp bootstrap.html /var/www/html/index.html

set +e
id jaey > /dev/null 2>&1

if [ $? -ne 0 ]; then
	sudo useradd -m jaey
else
	echo "jaey user already exists"
fi

set -e

echo "SCRIPT FINISHED"



