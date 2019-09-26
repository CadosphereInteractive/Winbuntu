#!/bin/bash

parentDir="$(dirname $PWD)"

for dir in $parentDir/*/; do
    # Checks to make sure the directory actually needs compressed
    baseName=$(basename $dir)
    [[ $baseName =~ ^(src|Logos|.git)$ ]] && continue

    # Compressing the files
    echo -e "\e[33mCompressing " $dir "\e[39m"
    rar a -r ../$baseName.rar $dir

    # Removes the uncompressed file
    echo -e "\e[33mRemoving " $dir "\e[39m"
    rm -rv $dir
done