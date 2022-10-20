# Shell script to show how to clean log files in Linux (Option - 2)
# Usage: cleanup_old_logs_shell_script path_to_folder number_of_days
# Remove all log files in the directory older than a certain number of days

# Option - 2
# ----------
FOLDER=$1
N_DAYS=$2

# validate
if [ $FOLDER == "" ] || [ $N_DAYS == "" ] ; then
	echo "USAGE: $0 <path_to_folder> <number_of_days>"
	exit 1
fi

if [ ! -d $FOLDER ] ; then
	echo "$FOLDER is not a valid directory..."
	exit 2
fi

# Remove required files
echo "Deleting files from the folder $FOLDER older than $N_DAYS days..."
find $FOLDER/* -mtime +$N_DAYS -exec rm -i {} \;
echo -e "\n\nCleaning process has been completed successfully..."

# To execute, issue the following set of commands
# su
# cd /
# mkdir /mytmp
# cp -r /tmp/* /mytmp
# /home/training/shellprog/shell43.sh /mytmp 1










