for i in {1..5}
do
	echo "You rolled dice"
	echo $(($RANDOM % 6 + 1))
done
