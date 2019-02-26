#!/bin/bash
# declare STRING variable
file="list"
cat $file | while read line 
do
    echo "ec2@$line"
done