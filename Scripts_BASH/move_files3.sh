#/bin/bash

# to move one file in every single directory of a path, use this code

path=/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir

# 7/17/17: To fix this, use move_files.sh to copy the folder ‘register.dof6.dat.mincost’ from bold/ to bold/001

# each directory in the path are under the variable subject
for subject in $path/*;
do
	# go to the exact file directory in the subject's directory
	cd $subject/bold/001
	# copy a file named via argument 2 to a new directory and filename via argument 3
	rm fmcpr.sm0.fsaverage.lh.nii.gz
	rm fmcpr.sm0.fsaverage.rh.nii.gz
	rm fmcpr.sm0.mni305.2mm.nii.gz
done