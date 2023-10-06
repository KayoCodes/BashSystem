#!/bin/bash
cNum=$1
read dCode dName
read cName
read cSchedule cStart cEnd
read cHours
read cSize


echo "Course department: $dCode $dName"
echo "Course Number: $cNum"
echo "Course Name: $cName"
echo "Scheduled Days: $cSchedule"
echo "Course start: $cStart"
echo "Course end: $cEnd"
echo "Credit hours: $cHours"
echo "Enrolled Students: $cSize"

