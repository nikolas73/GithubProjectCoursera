current=$(ls -l|wc -l)
function length {
	local l=0
	let l=$(expr $current - 1)
	echo $l
}
length=$(length)
echo "Guess how many files in the current directory:"
read response

if [[ $response -eq $length ]]
	then 
		response=$response
else
	while [[ $response -ne $length ]]
	do 
		if [[ $response -gt $length ]]
		then 
			echo "guess lower"
			read response
		elif [[ $response -lt $length ]]
		then 
			echo "guess higher"
			read response
		fi
	done
fi
echo  "congrats! the number of files are:" $response
