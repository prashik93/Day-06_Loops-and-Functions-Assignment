#! /bin/bash/ -x


read -p "Enter a number :- " num

count=1
power=1

while ((count<=num))
do
        power=$((power*2))
        echo "2^$count=$power"
	((count++))
done
