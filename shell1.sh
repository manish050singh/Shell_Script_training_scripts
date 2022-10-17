# Dealing with echo command and escape sequence characters
# This is a comment line in shell script...

echo "Welcome to the World of Shell Scripting..."
echo "This line is within         double quotes..."
echo 'This line is within         single quotes...'
echo This line is with out any         quotes...

echo -e "\n\t\tThis line is with escape sequence characters..."
echo -e "So there is a \v vertical tab here..."
echo -e \\n\\n\\t\\tThis line is with out any         quotes...


echo "End of the shell script..."

# bash and sh are shells available in Ubuntu. There is another shell called ksh which is not available here.
# Shell is a command interpreter.
# . => Present directory
# .. => Parent directory
# Add one extra line at the end of the file /home/training/.profile file
# PATH=$PATH:.
# Escape Sequence Characters: Those characters whose effect will be printed not the character itself.
# \n => New line
# \t => Horizontal Tab
# \v => Vertical Tab
# \a => Alarm (Beep sound)
# type pwd
# type cd
# which pwd
# which cd
