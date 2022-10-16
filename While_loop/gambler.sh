#! /bin/bash/ -x

money=100
win=0
loss=0

flag=1
while [[ flag -eq 1 ]]
do
	bet=$((RANDOM%2))
	if [ $bet -eq 1 ]
	then
		((win++))
		((money++))

	else
		((loss++))
		((money--))
	fi

	if [[ (($money -eq 200) || ($money -eq 0)) ]]
	then
		flag=0

	fi
done

echo "Win :- $win"
echo "Loss :- $loss"

echo "$money"
