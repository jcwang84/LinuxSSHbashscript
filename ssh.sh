#! /bin/bash
file="list.txt"
cat $file | while read line
do 
  echo "ec2@$line"
done
  