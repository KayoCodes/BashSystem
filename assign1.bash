#!/bin/bash

go=0

while [ $go ]; do
echo "Enter one of the following actions or press CTRL-D to exit"
echo "C - create a new course record" 
echo "R - read an existing course record"
echo "U - update an existing course record"
echo "D - delete an existing course record"
echo "E - update enrolled student count of existing course"
echo "T - show total course count"

read input

echo $input

case "$input" in 
    [Cc] ) 
    bash create.bash
    ;;

    [Rr] ) 
    read -p "Enter a department code and course number " dCode cNumber
    fname="data/"${dCode^^}$cNumber".crs"
    if [ ! -e $fname ]; then
        echo "ERROR: course not found"
    else
        bash read.bash $cNumber < $fname
    fi
    ;;
    
    [Uu] ) 
    bash update.bash;;

    [Dd] ) 
    bash delete.bash;;
    
    [Ee] )
    bash enroll.bash;;

    [Tt] ) 
    bash total.bash ;;

    *) echo "ERROR: invalid option $input" 
    exit 1;;
esac




done
