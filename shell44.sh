# How to setup cron job in ubuntu

# The cron software is a time-based job scheduler in Unix/Linux operating system.
# Cron allows Linux and Unix users to run commands or scripts at a given time and date. Once scheduled, scripts can be executed periodically. It is usually used by system admin such for backups or cleaning /tmp directories, cleaning the log files and for many more automation activities.

# Following is the list of commands required to setup and run our cron jobs:

sudo apt-get update         # connects to the Ubuntu server online and update the present system
sudo apt-get upgrade        # optinal to upgrade your system if it is not

sudo dpkg --configure -a    # requires only when 'sudo apt-get upgrade' asks for it
dpkg -l cron                # to check whether cron is already present or not

sudo apt-get install cron   # only when cron is not pre-installed
systemctl status cron

sudo systemctl start cron   # only when cron is not active or running
sudo crontab -l             # to list all cron jobs listed for the current user
sudo crontab -r             # to remove all cron jobs for the current user
sudo crontab -e             # to add new or edit pre-existing cron jobs for the current user

# cron job listing format -
# minute hour date monthno dayno command
# minute: [0 to 59]
# hour: [0 to 24] 24 hour means 0 hour
# date: [1 to 31]
# monthno: [1 to 12]
# dayno: [0 to 7] where both 0 and 7 denote Sunday

# Sample cron tab registrations as mentioned below - 
# 20 1 * * * command => At 1:20 am job has been scheduled for each day
# 0,14,29,44 * * * * command => At minutes 0, 14, 29, 44 the job has been schedule
# 40 2 25 12 * command => At 2.40 am of 26th December job has been scheduled
# 06 12 20 10 * /bin/bash /home/training/shellprog/shell45.sh > /dev/pts/0

# issue the command 'tty' at command prompt to check the working terminal name

