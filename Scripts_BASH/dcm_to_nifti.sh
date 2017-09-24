#!/bin/bash

export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh
export SUBJECTS_DIR=/Users/caramazzalab/Desktop/Jess/Subjects

path="/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir"
echo "path is the following: $path"

ls

for subject in $path/*;
do 
	echo "subject is the following: $subject"
	for file in $subject/bold/001/*00001.dcm;
	do
		dcm="$file"
		echo $dcm
	done
	cd $subject/bold/001
	mri_convert $dcm f.nii.gz
done