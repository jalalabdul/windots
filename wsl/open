#!/bin/bash
#
# START CONFIG
#
# Change driveletter below if windows is installed on something other than the C drive
driveletter=c
#
# END CONFIG
#
#
prefix=/mnt/
# Check for microsoft in uname -v, to see if they're on BoUoW
if [[ $(uname -v) != *"Microsoft"* ]]; then
        echo WARNING: This script is intended for use on Microsoft\'s Bash on Ubuntu On Windows \(Linux Subsystem\) and will likely not work otherwise!
fi
if [ ! -f /mnt/$driveletter/Windows/explorer.exe ]; then
        echo FATAL: Unable to find the explorer EXE at /mnt/$driveletter/Windows/explorer.exe. You might want to modify the Windows Driveletter by editing this executable \(eg \"nano $(dirname $0)\/explorer\"\)
        exit
fi
# See if desired directory is current working directory
if [[ $1 == "" || $1 == "." ]]; then
        destin=$PWD
else
        destin=$(readlink --canonicalize $1)
fi
# Remove the /mnt
path=${destin#$prefix}
# Append the :\
path=${path:0:1}:\\${path:2}
# Replace slashes with backslashes
path=${path//\//\\}
# If it's a directory, open inside that dir
if [[ -d $destin ]]; then
        /mnt/$driveletter/Windows/explorer.exe "$path"
        exit
fi
# If file, open to folder and select that file
if [[ -f $destin ]]; then
        /mnt/$driveletter/Windows/explorer.exe /select, "$path"
        exit
fi
echo FATAL: Argument 1 is not a file or directory!