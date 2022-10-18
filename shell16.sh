# Checking the existence of a file/directory and display its type
# passing the file name as command line argument

fname=$1

echo -e "\nSo the given file name is $fname...\n"
if [ -e $fname ] ; then   # -e => if the file exists?
	echo "$fname is existing..."
	if [ -f $fname  ] ; then  # check ordinary file
		echo "$fname is an Ordinary file..."
		perm=`ls -l $fname | cut -c2`
		if [ $perm = "r" ] ; then
			echo "$fname has the READ permission ON..."
		else
			echo "$fname has the READ permission OFF..."
		fi
		perm=`ls -l $fname | cut -c3`
		if [ $perm = "w" ] ; then
			echo "$fname has the WRITE permission ON..."
		else
			echo "$fname has the WRITE permission OFF..."
		fi
		perm=`ls -l $fname | cut -c4`
		if [ $perm = "x" ] ; then
			echo "$fname has the EXECUTE permission ON..."
		else
			echo "$fname has the EXECUTE permission OFF..."
		fi
	elif [ -L $fname ] ; then   # check Link special file
		echo "$fname is a Link special file..."
	elif [ -d $fname ] ; then   # check Directory file
		echo "$fname is a Directory file..."
	elif [ -b $fname ] ; then   # check Block special file
		echo "$fname is a Block special file..."
	elif [ -c $fname ] ; then   # check Character special file
		echo "$fname is a Character special file..."
	fi
else
	echo "$fname is NOT existing..."
fi

echo -e "\nEnd of the shell script...\n"

# - => Ordinary or regular file
# d => Directory file
# l => Link file, shortcut file
# b => Block special file
# c => Character special file

# In Lnux/Unix Operating System, all peripheral devices will be treated as a file system after it gets mounted on the system.

