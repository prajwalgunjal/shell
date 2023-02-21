# formula inch to feet -- divide by 12
# feet to inch multiply by 12
# 1ft = 12 in then 42 in = ? ft 
read -p "Enter number to convert it into inch:-" x
feet=$(($x/12))
echo $feet

# Rectangular Plot of 60 feet x 40 feet in meters
echo "Enter the length in feet: "
read feet

meters=$(echo "scale=2; $feet / 3.2808" | bc)

echo "$feet feet is equal to $meters meters."

# meter=$($x/"3.2808" | bc)
# echo $meter


#Calculate area of 25 such plots in acres
size=5000
oneplot=$( echo $size / 43560 | bc)
total_acres=$( echo $oneplot * 25 | bc)
echo "The area of 25 plots is $total_acres acres."