#!/bin/bash
USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE() {

if [ $? -ne 0 ]
then 
echo -e "$2 $R Failed"
else
echo -e "$2 $G Success"
fi 
}

if [ $USER_ID -ne 0 ]
then 
echo "ERROR: you must have sudo access to execute this script"
exit 1
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then 
dnf install mysql -y
VALIDATE $? "Installing MYSQL"
else
echo -e "Mysql is alredy... $Y installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then
dnf install git -y
VALIDATE $? "Installing git"
else
echo -e "Git is already... $Y installed"
fi