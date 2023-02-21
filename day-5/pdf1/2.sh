#use random to get dice number between 1 to 6 
x=$((RANDOM%7))
if [[ $x -gt 0 && $x -lt 8 ]]
then
	echo $x
fi
