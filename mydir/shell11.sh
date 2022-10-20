# Greetings message depending on the hour value

hour=`date +%H`
echo -e "\nSo the current hour is $hour..."

if [ $hour -le 12 ] ; then
	echo "Good Morning..."
elif [ $hour -le 18 ] ; then
	echo "Good Afternoon..."
elif  [ $hour -le 20 ] ; then
	echo "Good Evening..."
else
	echo "Good Night..."
fi

echo -e "\nEnd of the shell script...\n"

# Now to set and reset date and time, use the following commands:
# timedatectl set-ntp no
# timedatectl set-time 08:12:51 => To check with Good morning
# timedatectl set-time 14:12:51 => To check with Good afternoon
# timedatectl set-time 19:12:51 => To check with Good evening
# timedatectl set-time 23:12:51 => To check with Good night
# timedatectl set-ntp yes
# go for the command output against 'man date' command to check with different available options with the date command.
