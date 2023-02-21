# Write a program that takes a input and determines if the number is a prime.
read -p "Enter a number" a
# flag = 0
for (( i=2; i<=a/2; i++ ))
do
    if [ $(($a%$i)) != 0 ]
    then
        echo "prime number"
        #flag = 1
         break
    else
        echo "not prime number "
        break
    fi
done