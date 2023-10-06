#!/bin/bash


cd data
 
count=$(ls *.crs | wc -l)
cd ..


echo "Total course records is: $count "
