# Extend the program to take a range of number as 
# input and output the Prime Numbers in that range.
low=1
count=0
while [ $low -eq 1 ]
do
echo "Enter the lower limit,greater than 1"
read low
done
echo "Enter the upper limit"
read upper
for mun in `seq $low $upper`
do
ret=$(factor $mun | grep $mun | cut -d ":" -f 2 | cut -d " " -f 2)

if [ "$ret" -eq "$mun" ] 
then 
echo "$mun is prime" 
((count++))
fi 
done

echo -e "\n There are $count number of prime numbers"


