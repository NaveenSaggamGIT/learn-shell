#!bin/bash
echo Please enter the marks::
read MARKS
if [$MARKS -gt 90]
echo "You are a topper"
elif [$MARKS -gt 80]
then
echo "You are a First class student"
elif [$MARKS -gt 70]
then
echo "You are a Second class student"
elif [$MARKS -gt 60]
then
echo "You are a Third class student"
else 
echo "You are failed"
fi