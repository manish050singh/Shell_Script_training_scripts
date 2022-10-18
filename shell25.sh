# List those usernames logged-out or logged-in in the last 15 seconds

# group1: user11 user12 user13 user14
# group2: user21 user22 user23
# group3: user31 user32

# a.txt (user11) rwx-rwx-rwx
#                --- --- ---
#                (u) (g) (o)
# rwx (u) => user11 (owner)
# rwx (g) => user12 user13 user14
# rwx (o) => user21 user22 user23 user31 user32
# 'chmod ugo+x a.txt' is same as 'chmod a+x a.txt' (Relative permission settings)
# here a stands for all
# rwx = 421
# rw-r---wx => 643  chmod 643 a.txt (absolute permission settings)
# rwxr-x--x => 751  chmod 751 a.txt

# man groupadd
# sudo groupadd --gid 1006 student
# cat /etc/group
# man useradd
#  sudo useradd -d /home/user1 -g student -s /bin/bash -u 2001 user1
# sudo useradd -d /home/user2 -g student -s /bin/bash -u 2002 user2
# sudo useradd -d /home/user3 -g student -s /bin/bash -u 2003 user3
# sudo passwd user1
# sudo passwd user2
# sudo passwd user3
# id user1
# id user2
# id user3
# cat /etc/passwd
# cat /etc/passwd | grep -iE "user1|user2|user3"
# who
# whoami
# who mom likes
# ctrl+alt+F2 => main console (/dev/pts/0)
# ctrl+alt+F3 => tty3
# ctrl+alt+F4 => tty4
# ctrl+alt+F5 => tty5
# ctrl+alt+F6 => tty6

>whoold.dat   # this command will create a blank file whoold.dat
while true ; do
	who | cut -d" " -f1 | sort > whonew.dat
	for user in `comm -13 whoold.dat whonew.dat` ; do
		echo "$user has logged in..."
	done
	who | cut -d" " -f1 | sort > whonew.dat
	for user in `comm -23 whoold.dat whonew.dat` ; do
		echo "$user has logged out..."
	done
	cat whonew.dat > whoold.dat
	echo "-----------------------------------------"
	sleep 15   # sleep for 15 seconds
done

# check the running processes using the command 'ps -f' or with the command 'ps -ef | grep pts/0'
# to kill issue the command: 'kill -9 PID'
# here -9 means sure kill



