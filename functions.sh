#!bin/bash
USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"




VALIDATE(){

    if [ $1 -eq 0 ]
    then 
    echo -e "$2 ....$R success"
    else
    echo -e "$2  ....$G failed"
    fi
}

if [ $USER_ID -eq 0 ]
    then 
    echo "cuurent user is root"
    else
    echo "Not a Root user .. you must login root user to execute this script"
    exit 1
fi


dnf list installed mysql
if [ $? -ne 0 ]
then 
dnf install mysql -y
VALIDATE $? "INSTALLING MYSQL"
else
echo -e " MYSQL is already ... $Y Installed "
fi

dnf install git -y
if [ $? -ne 0 ]
then
VALIDATE $? "INSTALLING GIT" 
else 
echo "GIT is already ... $Y Installed"
fi
#for package in 
