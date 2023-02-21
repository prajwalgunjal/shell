# a=$RANDOM%20
# b=$RANDOM%20
# c=$RANDOM%20
# d=$RANDOM%20
# e=$RANDOM%20
read -p "Enter value of a" a
read -p "Enter value of a" b
read -p "Enter value of a" c
read -p "Enter value of a" d
read -p "Enter value of a" e
sum=$(($a+$b+$c+$d+$e))
avg=$(($sum/5))

echo $sum
echo $avg

