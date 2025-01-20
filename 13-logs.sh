#!/bin/bash
USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE() {

if [ $? -ne 0 ]
then 
echo -e "$2 $R Failed"
else
echo -e "$2 $G Success"
fi 
}

echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USER_ID -ne 0 ]
then 
echo "ERROR: you must have sudo access to execute this script"
exit 1
fi

dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then 
dnf install mysql -y &>>$LOG_FILE_NAME
VALIDATE $? "Installing MYSQL"
else
echo -e "Mysql is alredy... $Y installed"
fi

dnf list installed git &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
dnf install git -y &>>$LOG_FILE_NAME
VALIDATE $? "Installing git"
else
echo -e "Git is already... $Y installed"
fi