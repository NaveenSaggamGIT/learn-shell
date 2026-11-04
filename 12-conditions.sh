#!/bin/bash

#USER_ID=$(id -u)
USER_ID=0

if [ $USER_ID -eq 0 ]; then
    echo "Please do not run this script as root user. Please run as normal user"
    exit 1
fi
#echo "Proceeding with installation of nginx web server"

#dnf install nginx -y