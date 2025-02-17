#!/bin/env bash

# Resize images to Wolt specifications
# Usage: run the command with 2 arguments
# Arg 1: filename or wildcard
# Arg 2: destination folder

if [ "$#" -ne 2 ]; then
    echo 'Usage: $0 "<filename_or_wildcard>" <destination_folder>'
    echo 'yes, the "" around filename are important!'
    exit 1
fi

INPUT_PATTERN="$1"
OUTPUT_FOLDER="$2"

python3 ~/.local/scripts/pythonImageResizer.py "$INPUT_PATTERN" "$OUTPUT_FOLDER"

