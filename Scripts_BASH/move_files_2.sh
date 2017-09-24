#/bin/bash

path=/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir

# 7/19/17: To fix this, use move_files.sh to copy the folder ‘register.dof6.dat.mincost’ from bold/ to bold/001

for subject in $path/*;
do
	echo $subject/bold/001
	cd $subject/bold/001
	rm f.nii.gz
	cp f.feat/filtered_func_data.nii.gz f.nii.gz
done