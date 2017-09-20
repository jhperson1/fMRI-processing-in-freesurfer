#!/bin/bash

#this code removes the scans of some subjects

echo "What is the folder name?"
read FOLDER

mkdir backup/$FOLDER

mv $FOLDER/mri/brainmask.mgz backup/$FOLDER
mv $FOLDER/mri/wm.mgz backup/$FOLDER
mv $FOLDER/mri/T1.mgz backup/$FOLDER

mv $FOLDER/tmp/control.dat backup/$FOLDER

mv $FOLDER/surf/lh.pial backup/$FOLDER
mv $FOLDER/surf/rh.pial backup/$FOLDER
mv $FOLDER/surf/lh.white backup/$FOLDER
mv $FOLDER/surf/rh.white backup/$FOLDER