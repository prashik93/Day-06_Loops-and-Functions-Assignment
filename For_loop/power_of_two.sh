#! /bin/bash/ -x

read -p "Enter a number :- " num

count=1
power=1

for((count=1;count<=num;count=$((count+1)) ))
do
	power=$((power*2))
	echo "2^$count=$power"
done


