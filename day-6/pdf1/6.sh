index=0
	read -p "Enter number:" n

	echo "Prime factorization of $n are"
	for(( p = 2; p * p <= n; ))
	do
    	if(( n % p == 0))
    	then
        	array[index++]=$p
        	(( n /= p ))
    	else
        	(( p += 1 ))
    	fi
	done

	array[index]=$n
echo "${array[@]}"
