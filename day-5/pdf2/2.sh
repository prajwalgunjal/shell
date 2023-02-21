read -p "Enter date" date
read -p "Enter month" month 
a=2
b=31
if [[ $date -gt $a && $date -lt $b && $month -eq "march","april","may","june","july" ]]
then
	echo "True"
else 
echo "false"
fi

