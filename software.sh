#create shell script to check software installed or not
if [-z $1]
then
echo "Please provide software name"
echo "Usage: $0 <software name>"
else
if [ $(dpkg-query -W -f='${Status}' $1 2>/dev/null | grep -c "ok installed") -eq 0 ]
then
echo "Software is not installed"
else
echo "Software is installed"
fi
fi