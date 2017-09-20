#!/bin/bash

# start with a bunch of txt files named:
# 'subjectname-B101' st subjectID=B101
# this code moves each txt file into a folder
# named subjectID and renames the file simply
# 'subjectname'

path="/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY"

for filename in $path:
do
	if [[ "$filename" == "subjectname-"* ]]; then
		echo "inside the if statement"
	#https://stackoverflow.com/questions/
	#10520623/how-to-split-one-string-into
	#-multiple-variables-in-bash-shell
	subjectID=$(echo $filename | cut -f2 -d-)
	echo $subjectID
	# move the subject into the appropriate folder
	mv $filename $subjectID/
	# cut the name of the file into just subjectname
	mv $subjectID/$filename 'subjectname'
	fi
done