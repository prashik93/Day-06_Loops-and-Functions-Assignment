#! /bin/bash/ -x

echo "Enter a number :- "
read num

for (( i=2; i<=num/2; i++))
do
	res=$(( num%i ))
	if [ $res -eq 0 ]
	then
		echo "$num is not a Prime number"
		exit
	fi
done
echo "$num is a Prime number"
