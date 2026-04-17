#!/bin/bash

targetDirectory=$1
destinationDirectory=$2

currentTS=$(date +%s)
backupFileName="backup-$currentTS.tar.gz"

origAbsPath=$(pwd)

cd "$targetDirectory" || exit

yesterdayTS=$(($currentTS - 24 * 60 * 60))

toBackup=()

for file in *
do
  if [[ $(date -r "$file" +%s) -gt $yesterdayTS ]]
  then
    toBackup+=("$file")
  fi
done

cd "$origAbsPath" || exit

tar -czvf "$backupFileName" "${toBackup[@]}"

mv "$backupFileName" "$destinationDirectory"
