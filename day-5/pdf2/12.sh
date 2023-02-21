# 4. Write a program that takes User Inputs and does Unit Conversion of
# different Length units
# 1. Feet to Inch 3. Inch to Feet
# 2. Feet to Meter 4. Meter to Feet
# formula inch to feet -- divide by 12
# feet to inch multiply by 12

#feet to meter multiply the unit by 0.304
# meter to feet = multiply by 3.28084
echo "which operation would you like to perform"
echo "1) inch to feet"
echo "2) feet to inch"
echo "3) meter to feet"
echo "4) feet to meter"
read -p "Enter operation :- " b
case $b in 
1)
read -p "Enter A  value:- " a
z=$(($a*12))
echo "1) inch to feet is $z"
;;
2)
read -p "Enter A  value:- " a
y=$(($a/12))
echo "2) Feet to inch is $y"
;;
3)
read -p "Enter A  value:- " a
x=$(( $a*"3.28084" ))
echo "3) Meter to feet is $x"
;;
4)
read -p "Enter A  value:- " a
w=$(($a*"1/32.8"))
echo "4) feet to meter is $w" 
;;
*)
echo "selct valid number"
;;
esac