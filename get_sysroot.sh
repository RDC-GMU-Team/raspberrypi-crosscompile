#!/usr/bin/env sh

# TODO: Argument Parsing


# TODO: Check if device is active in network
# ping $1

# Make sysroot dir if it doesn't exist
if [ -d "sysroot" ] 
then 
    echo "Sysroot directory exists. This will be used as target" 
else
    mkdir sysroot && echo "Sysroot Directory created"
fi

# Get data from google coral
echo "Fetching sysroot from google coral at $1"
rsync -avzP --delete-after pi@$1:/lib sysroot
rsync -avzP --delete-after pi@$1:/usr sysroot
rsync -avzP --delete-after pi@$1:/etc sysroot

#echo "Converting all symlinks to relative links"
#./utils/sysroot-relativelinks.py sysroot
