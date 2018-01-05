#!/bin/bash

#Clone Project files to backup/Local Machine
source="/home/ayeh/Documents/Projects/*"
dest="/media/sf_Virtual_Machine_Shared_Folder/Projects"
backup="/home/ayeh/Documents/bak/Projects"
logfile="/home/ayeh/Documents/Profile/clone.log"

touch $logfile

now="$(date +'%Y%m%d')"
echo Script processed on `date '+%Y-%m-%d %H:%M:%S'` >> $logfile 2>&1

mkdir -p $dest/$now >> $logfile 2>&1
mkdir -p $backup/$now >> $logfile 2>&1

cp -rf $source $dest/$now >> $logfile 2>&1
cp -rf $source $backup/$now >> $logfile 2>&1

echo Clone completed on `date '+%Y-%m-%d %H:%M:%S'` >> $logfile 2>&1

