#!/bin/bash

read -p "Enter Department Code: " dCode
if [[ -z $dCode ]]; then
    echo "Must Enter Department Code to update"
    exit 1
fi
read -p "Enter Department Name: " dName
read -p "Enter Course Number: " cNum
if [[ -z $cNum ]]; then
    echo "Must enter a course number to update"
    exit 1
fi
read -p "Enter Course Name: " cName
read -p "Enter Course Schedule: " cSchedule
read -p "Enter Course Start Date: " cStart
read -p "Enter Course End Date: " cEnd
read -p "Enter Course Credit Hours: " cHours
read -p "Enter Course Enrollment: " cEnrollment




function readClassInfo {
read dCode1 dName1
read cName1
read cSchedule1 cStart1 cEnd1
read cHours1
read cSize1

}

function writeClassInfo {
echo "${dCode^^} $dName"
echo "$cName"
echo "$cSchedule $cStart $cEnd"
echo "$cHours"
echo "$cEnrollment"


}
filename="data/"${dCode^^}$cNum".crs"

if [[ -e $filename ]]; then
    readClassInfo < "$filename"
    if [[ -z $dName ]]; then
        dName=$dName1
    fi
    if [[ -z $cName ]]; then
        cName=$cName1
    fi
    if [[ -z $cSchedule ]]; then
        cSchedule=$cSchedule1
    fi
    if [[ -z $cStart ]]; then
        cStart=$cStart1
    fi
    if [[ -z $cEnd ]]; then
        cEnd=$cEnd1
    fi
    if [[ -z $cHours ]]; then
        cHours=$cHours1
    fi
    if [[ -z $cEnrollment ]]; then
        cEnrollment=$cSize1
    fi
    writeClassInfo > "$filename"
    echo "[$(date)] UPDATED: $dCode $cNum $cName" >> data/queries.log
else
    echo "ERROR: course not found"
fi


