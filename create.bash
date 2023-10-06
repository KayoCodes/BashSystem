#!/bin/bash

read -p  "Enter in Department Code " dCode

read -p  "Enter in Department Name " dName
read -p  "Enter in Course Number " cNumber
read -p  "Enter in Course Name " cName
read -p  "Enter in Course Schedule (MWF, TH) " cSchedule

if ! [[ $cSchedule =~ [mM][wW][fF] ]] && ! [[ $cSchedule =~ [tT][hH] ]]; then
    echo "Enter Valid schedule (MWF) or (TH) "
    exit 1
fi

read -p  "Enter in Course Start Date " cStart
read -p  "Enter in Course End Date " cEnd
read -p  "Enter in Course Credit Hours " cHours
let hours=$cHours
if ! [[ $hours -ge 0 ]]; then
    echo "ERROR enter valid number"
    exit 1;
fi
read -p  "Enter in Initial Course Enrollment " cEnrollment
let enr=$cEnrollment

if ! [[ $enr -ge 0 ]]; then
    echo "ERROR enter valid number"
    exit 1;
fi

filename="data/"${dCode^^}$cNumber".crs"

if [[ -e $filename ]]; then
    echo "ERROR: course already exist"
else

 

   #cat > $filename


     
     
     

    echo "$dCode $dName" >> $filename
    echo "$cName" >> $filename
    echo "$cSchedule $cStart $cEnd" >> $filename
    echo "$cHours" >> $filename
    echo "$cEnrollment" >> $filename

    echo "[$(date)] CREATED: $dCode $cNumber $cName" >> data/queries.log
    chmod +x "$filename"
 
fi




