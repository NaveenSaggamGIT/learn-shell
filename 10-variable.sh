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
#echo "Fruits are:: ${FRUITS[0]}"
#echo "Fruits are:: ${FRUITS[1]}"
#echo "Fruits are:: ${FRUITS[2]}"
echo "Fruits are:: ${FRUITS[@]}"