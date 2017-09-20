#!/bin/bash

#replace the path variable with the folder containing all the filenames
#that you want to rename without spaces this time
path='/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir/S201/bold/001'
cd $path

for f in *; 
do 
	echo $f;
	mv "$f" "${f// /_}"; 
done