#!/bin/bash

# use this code to open freeview on the
# inflated surfaces of each subject

export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh

DICOM_PATH=/Users/caramazzalab/Desktop/Jess/RAW_data
export SUBJECTS_DIR=/Users/caramazzalab/Desktop/Jess/subjects

echo "What is the subject's file name?"
read FOLDER

freeview -v \
    $FOLDER/mri/T1.mgz \
    $FOLDER/mri/wm.mgz \
    $FOLDER/mri/brainmask.mgz \
    -f \
    $FOLDER/surf/lh.inflated:edgecolor=blue \
    $FOLDER/surf/rh.inflated:edgecolor=red