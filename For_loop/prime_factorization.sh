#! /bin/bash/ -x

read -p "Enter a number :- " usrInput

count=0
for((num=2; num<=$((usrInput/2)); num=$((num+1)) ))
do
	if [ $(($usrInput%$num)) -eq 0 ]
	then
		echo $num
		count=$((count+1))
	fi
done
