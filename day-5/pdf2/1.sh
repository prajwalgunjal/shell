a=$(($RANDOM%400))
b=$(($RANDOM%400))
c=$(($RANDOM%400))
d=$(($RANDOM%400))
e=$(($RANDOM%400))
echo $a $b $c $d $e
min=$a
max=$a
if [ $max -lt $b ]
then
        max=$b

elif [ $min -gt $b ]
then
        min=$b
fi

if [ $max -lt $c ]
then
        max=$c

elif [ $min -gt $c ]
then
        min=$c
fi

if [ $max -lt $d ]
then
        max=$d

elif [ $min -gt $d ]
then
        min=$d
fi

if [ $max -lt $e ]
then
        max=$e

elif [ $min -gt $e ]
then
        min=$e
fi
echo "$max is the maximum number"
echo "$min is the minimum number"