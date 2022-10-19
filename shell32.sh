# Segregating /dev file names according to their file types
# We shall keep block special, character special, link and directory file names under the text files dev_block.txt, dev_character.txt, dev_link.txt and dev_directory.txt respectively.

ls -l /dev |  cut -c1,54- > dev_filelist.txt

if [ -e dev_block.txt ] ; then  # here -e checks for is the file pre-exists
	rm dev_block.txt
fi

if [ -e dev_character.txt ] ; then
	rm dev_character.txt
fi

if [ -e dev_link.txt ] ; then
	rm dev_link.txt
fi

if [ -e dev_directory.txt ] ; then
	rm dev_directory.txt
fi

while read file_names ; do
	file_type=`echo $file_names | cut -c1`
	file_name=`echo $file_names | cut -c2-`
	if [ $file_type = 'c' ] ; then
		echo $file_name >> dev_character.txt
	elif [ $file_type = 'b' ] ; then
		echo $file_name >> dev_block.txt
	elif [ $file_type = "l" ] ; then
		echo $file_name >> dev_link.txt
	elif [ $file_type = 'd' ] ; then
		echo $file_name >> dev_directory.txt
	fi
done < <(cat dev_filelist.txt)
rm dev_filelist.txt

echo -e "\nEnd of the shell script...\n"

