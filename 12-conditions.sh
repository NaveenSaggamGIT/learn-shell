#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -eq 0 ]; then
    echo "Please do not run this script as root user. Please run as normal user"
fi
dnf install inginx -y