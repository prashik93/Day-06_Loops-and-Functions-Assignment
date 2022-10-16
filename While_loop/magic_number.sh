#! /bin/bash/ -x

echo "Think of a number 'n' between 1 to 100"
start=1
end=100
flag=1

while [[ flag -eq 1 ]]
do
	value=$(($start+($end-$start)/2))

	echo "Press G is number is Got. Press Y if number is less than $value or Press N if number is greater than $value"
	read ch

	if [[ $ch = "Y" ]]
	then
		end=$value
	else
		start=$value
	fi
	if [[ $ch = "G" ]]
	then
		echo "The magical number is :- $value"
		flag=0
	fi
done

