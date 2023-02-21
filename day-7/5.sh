arr[0]=" 1"
arr[1]=" 2" 
arr[2]=" 3"
arr[3]=" 4"
arr[4]=" 5"
arr[5]=" 1"
arr[6]=" 7"
arr[7]=" 8"

duplicate() { printf '%s\n' "${arr[@]}" | sort -cu |& awk -F: '{ print $5 }'; }

duplicate_match=$(duplicate)

echo "Array: ${arr[@]}"

# echo "duplicate: $duplicate_match"

[[ ! $duplicate_match ]] || { echo "Repeated element in array :$duplicate_match"; exit 0; }

echo "no duplicate"
