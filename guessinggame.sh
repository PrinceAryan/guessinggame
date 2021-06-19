echo " This is a Guessing Game"
echo "Guess the number of files present in the current directory:"
read input_guess

function count_files {
	local count=$(ls | wc -l)
	echo $count
}

correct_count=$(count_files)

while [[ $input_guess -ne $correct_count ]]
do
	if [[ $input_guess -gt $correct_count ]]
	then
		echo "The guess is too high"
	else
		echo "The guess is too low"
	fi
	echo 
	echo "Please try again: "
	read input_guess
done

echo "Congrats.. You guessed the correct number of files in the current directory."
