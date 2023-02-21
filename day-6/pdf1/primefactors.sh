# Write a program to compute Factors of a number N using prime factorization method.
read -p "Enter a number" num

for (( i=2; i<=$num; i++ ))
do 
if [ $num%$i == 0 ]
then
isprime=1
for (( j=2; j<=$i/2; j++ ))
do
if [ $i%$j == 0 ]
then
$isprime=0
break
fi
done
if [ $isprime == 1 ]
then
echo $i 
fi
fi
done
