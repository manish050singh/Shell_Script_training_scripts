# Shell script to show how to clean log files in Linux (Option - 1)

# Option - 1
# ----------
# Check the disk space from the command line. Use the command 'du' command to see which files and directories consume the most space inside of the folder '/var/log'

# Also issue the command 'du -h /var/log'
# The -h argument causes the command to print the information in a human-readable format
su  #login as a super user with valis password
cd /
ls -lS /var/log | more

cp /var/log/dpkg.log /var/log/mylogfile
cd /var/log
du -h *

# now to make the mylogfile content empty
# use the cat command to empty the log file
cat /dev/null > /var/log/mylogfile
# or isssue the following command
>/var/log/mylogfile

# to confirm that we have cleared the content of the mylogfile
du -h *

# run individual commands from this shell script at the command prompt
