#!bin/bash
USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]
    then 
    echo "cuurent user is root"
    else
    echo "Not a Root user .. you must login root user to execute this script"
    exit 1
fi

dnf install mysql -y

dnf install git -y 
#for package in 
