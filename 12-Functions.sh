#!/bin/bash
USERID=$( id -u )
if  [ $USERID -ne 0 ]; then
    echo "Please run this script as root user"
    exit 1
fi
validate() {
    if [ $? -eq 0 ]; then
        echo "$1  is installed scuccessfully"
    else
        echo "$1  installation failed"
        exit 1
    fi
}
dnf install nginx -y
validate $? "nginx web server"
dnf install mysql -y
validate $? "mysql database server"