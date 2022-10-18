# User defined functions in shell script more study

# calling one function from another function
function_one() {
	echo "function_one() is executing..."
	function_two
}

function_two() {
	echo "function_two() is executing..."
}

# calling function_one()
function_one   # note that before calling the functions all the called functions should remain pre-defined

function_filecount() {
	my_directory=$1
	count_file=$(ls $my_directory | wc -l)
	echo "$my_directory is containing $count_file number of files/directories..."
}

echo
function_filecount /home/training/shellprog












