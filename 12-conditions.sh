#!/bin/bash

#USER_ID=$(id -u)
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script as root user"
    exit 1
fi

echo "Proceeding with installation of nginx web server"

dnf install nginx -y
if [ $? -eq 0 ]; then
    echo "nginx web server installed successfully"
else
    echo "nginx web server installation failed"
    exit 1
fi
dnf install mysql -y
if [ $? -eq 0 ]; then
    echo "mysql database server installed successfully"
else
    echo "mysql database server installation failed"
    exit 1
fi