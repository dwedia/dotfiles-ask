#!/bin/env bash

#Converting Apple HEIC format to .jpg and renaming the files to get rid of the .HEIC
# Usage: Stand in the folder with the files to convert and run this fil# Usage: Stand in the folder with the files to convert and run this filee

currentWorkPath=$(pwd)


# Convert apple.HEIC to .jpg
for FILE in $(ls IMG*); do magick $FILE -quality 100 $FILE.jpg; done

# Rename files to get rid of the .HEIC part of the filename
for FILECONVERT in $(ls *.HEIC.jpg); do  
  mv "$FILECONVERT" "${FILECONVERT/.HEIC/}"
done

