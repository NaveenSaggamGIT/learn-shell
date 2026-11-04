#!bin/bash
var1=10;
var2=20;
var3=naveen;
echo "$var1+$var2"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=10 # Iam declaring a variable as integer type
COUNT=COUNT+1
echo "COUNT is:: $COUNT"

FRUITS=(APPLE BANANA ORANGE)
echo "Fruits are:: ${FRUITS}"