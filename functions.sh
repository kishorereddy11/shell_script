#!bin/bash
USER_ID=$(id -u)

VALIDATE(){

    if [ $1 -eq 0 ]
    then 
    echo "$2 .... success"
    else
    echo "$2  .... failed"
}

if [ $USER_ID -eq 0 ]
    then 
    echo "cuurent user is root"
    else
    echo "Not a Root user .. you must login root user to execute this script"
    exit 1
fi

echo "Installing mysql"
dnf install mysql -y

VALIDATE $? "INSTALLING MYSQL"

echo "Installing git"
dnf install git -y

VALIDATE $? "INSTALLING GIT" 
#for package in 
