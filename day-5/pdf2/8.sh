read -p "Enter a number :- " a
read -p "Enter b number :- " b
read -p "Enter c number :- " c
d=$(($a+$b*$c))
e=$(($a%$b+$c))
f=$(($c+$a/$b))
g=$(($a*$b+$c))
echo $d
echo $e
echo $f
echo $g
min=$d
max=$d
if [ $max -lt $e ]
then 
	max=$e
elif [ $min -gt $e]
then 
	min=$e
fi

if [ $max -lt $f ]
then 
	max=$f
elif [ $min -gt $f ] 
then
	min=$f
fi

if [ $max -lt $g ]
then 
	max=$g
elif [ $min -gt $g ]
then 
	min=$g
fi
echo "$max is the maximum number"
echo "$min is the minimum number"