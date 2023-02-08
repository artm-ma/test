#!/bin/sh

# What to backup. 
backup_dir="$HOME"

# Where to backup to.
dest=$1

# Create archive filename.
date=$(date +%Y-%m-%d)
hostname=$USER_$(hostname -s)
archive_file="HOME_$hostname-$date.tar"

# If $1 is empty, show message
if [ -z $1 ]; then
	echo "Please specify backup destination directory."
fi

# If $1 is not the directory, show message
if [ ! -d $1 ]; then
	echo "This is not a directory. Please specify backup destination directory."
fi



# Print start status message.
echo "Backing up $backup_dir to $dest/$archive_file"

# Backup the files using tar.
tar cvf $dest/$archive_file $backup_dir

# Print end status message.
echo "Backup is finished"

