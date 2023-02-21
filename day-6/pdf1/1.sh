# Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.
read -p "enter a number :- " n
a=$((2*$n))
for (( i=0; i <= $n; i++ ))
do
b=0 
    if [ $b -le $a ]
    then
      b=$((2**i))
        echo $b
    fi
done