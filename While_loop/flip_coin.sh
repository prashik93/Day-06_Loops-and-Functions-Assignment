#! /bin/bash/ -x

headCount=0
tailCount=0
maxWinCount=11

while [[ (($headCount -lt $maxWinCount) && ($tailCount -lt $maxWinCount)) ]]
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq 1 ]
	then
		headCount=$(($headCount+1))
	else
		tailCount=$(($tailCount+1))
	fi
done

if [[ $headCount -ge $tailCount ]]
then
	echo "Head Wins"
else
	echo "Tail Wins"
fi


echo "Head :- $headCount"
echo "Tail :- $tailCount"
