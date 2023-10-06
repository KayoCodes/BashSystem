#!/bin/bash

read -p "Enter a course department code and number: " dCode cNum
read -p "Enter an enrollment change amount: " cAmount
filename="data/"${dCode^^}$cNum".crs"


function getInfo {
read dcode dname
read cname
read schedule cstart cend
read chours
read students

}


function sendInfo {
echo "$dcode $dname"
echo "$cname"
echo "$schedule $cstart $cend"
echo "$chours"
echo "$sum"
}


if [[ -e $filename ]]; then
    getInfo < "$filename"
    let s=$students
    let a=$cAmount
    let sum=$s+$a
    sendInfo > "$filename"
    echo "[$(date)] ENROLLMENT: $dCode $cNum changed by $cAmount" >> data/queries.log
else
    echo "ERROR course not found"
fi
