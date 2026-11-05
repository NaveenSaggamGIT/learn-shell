#!/bin/bash

USER_ID=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
if [ $USER_ID -ne 0 ]; then
    echo "Please run this script as root user"
    exit 1
fi

mkdir -p $logs_folder
echo "Script execution started at $(date)" &>> $logs_file
validate(){
    if [ $1 -eq 0 ]; then
        echo "$2  is installed scuccessfully" &>> $logs_file
    else
        echo "$2  installation failed" &>> $logs_file
        exit 1
    fi
}


for package in $@
do
    dnf install installed $package -y &>> $logs_file
    if [ $? -eq 0 ]; then
    echo "Installing package $package" &>> $logs_file
    dnf install $package -y &>> $logs_file
    validate $? "$package"
    else
    echo "Package $package is already installed" &>> $logs_file
    fi
done
