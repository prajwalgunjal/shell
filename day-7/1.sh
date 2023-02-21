function second_highest () {
firstMax=0
secondMax=0

for (( i=0; i<${#Array[@]}; i++ ))
do
if [ ${Array[$i]} -gt $firstMax ]
then 
secondMax=$firstMax
firstMax=${Array[$i]}
elif [ ${Array[$i]} -gt $secondMax -a ${Array[$i]} -ne $firstMax ]
then 
secondMax=${Array[$i]}
fi 
done
echo "Second Highest: $secondMax"
}
function second_lowest () {
firstMin=1000
secondMin=1000

for (( i=0; i<${#Array[@]}; i++ ))
do
if [ ${Array[$i]} -lt $firstMin ]
then 
secondMin=$firstMin
firstMin=${Array[$i]}
elif [ ${Array[$i]} -lt $secondMin -a ${Array[$i]} -ne $firstMin ]
then 
secondMin=${Array[$i]}
fi
done
echo "Second Lowest : $secondMin"
}



x=100
y=999
range=$(($y-$x+1))
for (( i=0; i<10; i++ ))
do
    Array[$i]=$(($(($RANDOM%$range))+$x))
done
echo "Array : ${Array[@]}"
second_highest "${Array[@]}"
second_lowest "${Array[@]}"
#max_result=$((second_highest-"${Array[@]}" ))

#echo "Second Highest no is : $max_result"
