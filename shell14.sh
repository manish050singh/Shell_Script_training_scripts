# Dealing with command line arguments
echo "So the total number of command line arguments passed is: $#..."
echo "All command line arguments in string is: $@..."
echo "All command line arguments in string is: $*..."
ps -f
echo "So the current process ID number is: $$..."

echo -e "\nSo command line arguments passed:"
echo $0 $1 $2 $3 $4 $5 $6 $7

echo ""
shift
echo "After first shift command execution..."
echo "So the total number of command line arguments is: $#..."
echo "All command line arguments in string is: $@..."
echo $0 $1 $2 $3 $4 $5 $6 $7

echo ""
shift
echo "After second shift command execution..."
echo "So the total number of command line arguments is: $#..."
echo "All command line arguments in string is: $@..."
echo $0 $1 $2 $3 $4 $5 $6 $7

echo ""
shift
echo "After third shift command execution..."
echo "So the total number of command line arguments is: $#..."
echo "All command line arguments in string is: $@..."
echo $0 $1 $2 $3 $4 $5 $6 $7

echo ""
shift
echo "After fourth shift command execution..."
echo "So the total number of command line arguments is: $#..."
echo "All command line arguments in string is: $@..."
echo $0 $1 $2 $3 $4 $5 $6 $7

echo ""
shift
echo "After fifth shift command execution..."
echo "So the total number of command line arguments is: $#..."
echo "All command line arguments in string is: $@..."
echo $0 $1 $2 $3 $4 $5 $6 $7

echo -e "\nEnd of the shell script...\n"

# $$ -> To print current process ID number
# Check with the command 'ps -f'
# $# -> Number of command line arguments passed excluding $0 i.e. the file name itself
# $@, $* -> To print all command line arguments as a string excluding the file name
# $1, $2, $3, ... -> Command line arguments passed
# $? -> Return value of a command or a function, where 0 denotes the command succeeded and 1 denotes that the command failed.


