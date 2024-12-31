#!/bin/bash
echo "Hello World parameter1 : $1"

echo "Present working directory : $(pwd)"

echo "List of files in current directory : $(ls -l)"

echo "List of files in current directory : $(ls -l | awk '{print $9}')"

