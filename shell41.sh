# Shell script to take the backup of the system

# SPOOL => Simulteneous Peripheral Operation On Line

# What to backup?
backup_files="/home /var/spool/mail /etc /root /boot /opt"

# Where to backup?
dest="/mnt/backup"

# To check whether the backup folder is pre-existing ot not
if [ ! -e $dest ] ; then
	echo -e "\nCreating the destination folder $dest...\n"
	mkdir $dest
fi

# Create archive filename
day=$(date +%b-%d-%Y)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

echo
echo -n "So backup start date and time is: "
date
echo "Backup Started..."
echo 


# backup the files using the command tar
tar cpzfv $dest/$archive_file $backup_files
# c: create the archive
# p: preserve permission for the new files
# z: compress the files to reduce the size
# f: use the archive file or device ARCHIVE
# v: verbose mode, verbosely list files processed

# print the completion message
echo
echo "Backup Finishes..."
echo -n "So backup finish date and time is: "
date
echo

# to restore all the files systems issue the following command
cd /mnt/backup
tar -xvzf training-virtual-machine-Oct-20-2022.tgz
# x: extract filesystem

# run this shell script as a super user only
# issue the command 'su' and login as a super user with super user password
# and then execute this shell script as '/home/training/shellprog/shell41.sh'

