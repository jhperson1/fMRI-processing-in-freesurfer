#!/bin/bash

# this program runs recon all on a subject using
# only the first dicom file of that subject

export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh

DICOM_PATH=/Users/caramazzalab/Desktop/Jess/RAW_data
export SUBJECTS_DIR=/Users/caramazzalab/Desktop/Jess/subjects

echo "What is the name of the folder that contains the DICOM files?"
read FOLDER

dicom_files=""
for file in $DICOM_PATH/$FOLDER/*00001.dcm;
do dicom_files="$dicom_files -i $file"
echo $dicom_files
done

recon-all \
$dicom_files \
-s $FOLDER \
-all