#Find the Magic Number
# a. Ask the user to think of a number n between 1 to 100
# b. Then check with the user if the number is less then n/2 or greater
# c. Repeat till the Magic Number is reached..
#!/bin/bash
# echo "Think a number between 1 to 100"

# low=1
# high=100
# magicNumber=false

# while [ $magicNumber = false  ]
# do
# guess=$(( (low + high)/2 ))
# read -p "is your number is less than or equal to $guess ?? (y/n)" user_response 
# if [ $user_response = "y" ]
# then
#     high=$((guess - 1))
# elif [ $user_response = "n" ]
# then 
#     low=$((guess + 1))
# else
#     echo "invalid input. please enter 'y' or 'n' "
#     continue 
# fi
# if [ $low -eq $high ]
# then
#     magicNumber=true
#     echo "The magic number is $low."
# fi
# done

#!/bin/bash

echo "Think of a number between 1 and 100."
low=1
high=100
magic_number_found=false

while [ $magic_number_found = false ]
do
  guess=$(( (low + high) / 2 ))
  read -p "Is your number less than or equal to $guess? (y/n) " user_response
  if [ $user_response = "y" ]
  then
    high=$((guess - 1))
  elif [ $user_response = "n" ]
  then
    low=$((guess + 1))
  else
    echo "Invalid input. Please enter 'y' or 'n'."
    continue
  fi
  if [ $low -eq $high ]
  then
    magic_number_found=true
    echo "The magic number is $low."
  fi
done
