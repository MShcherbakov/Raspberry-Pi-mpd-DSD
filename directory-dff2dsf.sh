#!/bin/bash
DIR="$1"
 
# failsafe - fall back to current directory
[ "$DIR" == "" ] && DIR="." 
 
# save and change IFS 
OLDIFS=$IFS 
IFS=$'\n' 
 
# read all file name into an array
fileArray=($(find $DIR -type f | grep .dff | sort))
 
# restore it 
IFS=$OLDIFS
 
# get length of an array
tLen=${#fileArray[@]}
 
# use for loop read all filenames
for (( i=0; i<${tLen}; i++ ));
do
  fullfile="${fileArray[$i]}"
  filename=$(basename "$fullfile")
  extension="${filename##*.}"
  shortname="${filename%.*}"
  ~/work/dff2dsf-122/linux-x64/dff2dsf "$fullfile" ~/work/dsf/"$shortname".dsf
done
