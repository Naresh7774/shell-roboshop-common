#!/bin/bash

source ./common.sh

check_root

cp mongo.repo /etc/yum.repos.d/mongo.repo
VALIDATE $? "Adding Mongo repo"


dnf install mongodb-org -y &>>$LOG_FILE
VALIDATE $? "Installing MongoDB"