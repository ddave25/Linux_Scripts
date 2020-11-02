#!/usr/bin/bash

function usage() {
	echo ""
}

function RecycleBinExists {
	if [ -d ~/RecycleBin ]
  	then
		echo "Recycle Bin exists."
  	else
		echo "Recycle Bin does not exist."

		# Create a Recycle Bin within user's home folder
    		mkdir -p ~/RecycleBin

  	fi
}

function RecycleBinDelete {
	# Check whether user wants to clear all contents from Recycle Bin or specific files only
	read -p "Do you want to clear all contents from the Recycle Bin? (Y/N): " option

	if [[ $option == "Y" ]]
	then
    		# If yes, clear all contents from the Recycle Bin
    		rm ~/RecycleBin/*

    		echo "Recycle Bin cleared."

  	elif [[ $option == "N" ]]
  	then
    		# If no, Display all contents to let user choose which file to delete
    		echo "These are the contents of your Recycle Bin".
    		ls -ltr ~/RecycleBin | grep -v "total"

    		echo "Please choose which file(s) you want to delete by using 'rm ~/RecycleBin/[filename]'"

  	fi
}

function recycle {
	if [[ -d $1 ]]
  	then
    		# If the user is attempting to delete a directory, compress the directory using tar and gzip and store it in the Recycle Bin
    		# tar -zcvf ~/RecycleBin/$2.tar.gz $2

    		# Delete the directory after compressing it
    		# rm -r $2

    		echo "$PWD/$1 compressed and recycled."

	elif [[ -f $1 ]]
  	then
		# If the user is attempting to delete any other file, move it to the Recycle Bin from the present working directory
    		# mv $2 ~/RecycleBin/$2
    		echo "$PWD/$1 recycled."

  	fi
}

function RecycleBinRestore {
	file=$1
	checkDir=$(ls -ltr ~/RecycleBin | grep -w $file.tar.gz)

	# Check whether the file user is attempting to restore is a directory

  	if [[ $checkDir != "" ]]
  	then
    		# If the user is attempting to restore a directory, extract the directory in the Recycle Bin to the present working directory
		tar -zxvf ~/RecycleBin/$file.tar.gz -C $PWD

    		# Delete the archive file
    		rm ~/RecycleBin/$file.tar.gz

    		# Tell user where directory has been restored to
    		echo "$file restored to $PWD/$file."

  	elif [[ $checkDir == "" ]]
  	then
  		# If the user is attempting to restore a file, move it from the Recycle Bin to the present working directory
  		mv ~/RecycleBin/$file $PWD/$file

  		# Tell user where file has been restored to
  		echo "$file restored to $PWD/$file."

  	fi
}
