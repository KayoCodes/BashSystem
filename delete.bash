#!/bin/bash

read -p "Enter a course department code and number " dCode cNum
filename="data/"${dCode^^}$cNum".crs"
function getInfo {
read dcode dname
read cName
read a b c
read chours
read members
}
if [[ -e $filename ]]; then
    getInfo < "$filename"
    name=$cName

    rm $filename
    echo "[$(date)] DELETED: $dCode $cNum $name" >> data/queries.log
    if [[ ! -e $filename ]]; then
        echo "$cNum was successfully deleted."
        exit 0;
    else
        echo "Course not deleted "
    fi
else
    echo "Error: course not found."
    exit 1;
fi
