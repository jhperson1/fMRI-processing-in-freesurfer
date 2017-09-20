#!/bin/bash

path="/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir"
echo "path is the following: $path"

ls

for subject in $path/*;
do 
	# # these subjects have been done during testing
	# if [ $subject = "$path/B101" ] || [$subject = "$path/B102"] || [$subject = "$path/B103"] || [$subject = "$path/B104"] || [$subject = "$path/B105"]; then
	# 	echo 'skipped'
	# # these subjects haven't been processed yet
	# else
		echo "subject is the following: $subject"
		cd $subject/bold/001/f.feat
		mv filtered_func_data.nii.gz ../
		cd ..
		mv filtered_func_data.nii.gz f_unfiltered.nii.gz
		# https://mandymejia.wordpress.com/fsl-maths-commands/
		# https://www.jiscmail.ac.uk/cgi-bin/webadmin?A2=ind1109&L=fsl&D=0&P=181297
		fslmaths f_unfiltered.nii.gz -bptf 25 2.5 f_filtered.nii.gz
		mv f.nii.gz f_wrongfilter.nii.gz
		mv f_filtered.nii.gz f.nii.gz
	# fi
done