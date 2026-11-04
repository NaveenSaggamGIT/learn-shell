#!/bin/bash

#USER_ID=$(id -u)
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script as root user"
    exit 1
fi

echo "Proceeding with installation of nginx web server"

dnf install nginx -y