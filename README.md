# fMRI-processing-in-freesurfer

Dear User,

Hi, I’m Jess. I worked at the Caramazza Lab with the postdoctoral fellow Ella Striem-Amit for summer of 2017. Over the course of the summer, I worked largely with freesurfer to conduct preprocessing on a sample of blind and sighted subjects with structural and functional MRI scans. Some analysis I implemented included dicom to NIFTI conversion, recon-all anatomical reconstruction and manual correction, functional scan preprocessing, region definition (segmentation transfer), and time course extraction. In this document, along with a main focus on freesurfer, I mention important notes for operating the terminal (using bash scripts) along with some scripts in MATLAB.

Look to the following document for an overview of these functions and refer to my lab manuals, my presentation, my weekly summaries for a sense of when I implemented what (and thus what time ranges in my lab manual you could look towards to find the information you want).

Email me at: jessica_huang@college.harvard.edu or jess.huang.98@gmail.com with questions.

Good Luck!
Jess
8/8/17

**Freesurfer**

*What is freesurfer?*

Freesufer is a program created at Charles MGH that packages many functions in neuroimaging for widespread use. Freesurfer is in fact used by the large neuroimaging compilation project (1200+ subject scans), the Human Connectome Project. You can run commands in freesurfer from the command line using linux. There are some GUI operations in freesurfer but I mostly used the GUI freeview and tkmedit to visual scans. I spend most of my work using the command line.

*What can freesurfer do?*

Many things! But importantly, look through my lab manuals to get a sense of what (and more importantly how) I implemented freesurfer functions.

Some important functions are implementation and manual correction of anatomical MRI data, the entire functional preprocessing pipeline from raw functional data to biologically meaningful extractable data, region definition, and time course extraction.

*What did you do in freesurfer? What folder structure did you create?*

For anatomical scans, I filled the folder Jess/RAW_data with dicom scans and reconstructed them into a SUBJECTS_DIR called Jess/Subjects.

For functional scans, I created a new folder Jess/V1_REST_STUDY/dicomdir. While freesurfer says to run commands in the project directory. In my case, the project directory is dicomdir. Thus, most freesurfer functional commands will be run in dicomdir.

For freesurfer commands, you can use:
-s B101 for subject B101
OR
-sf sessid for all subjects with folder names listed in the txt file Jess/V1_REST_STUDY/dicomdir.

*What is the structure of the functional scans?*

In Jess/V1_REST_STUDY/dicomdir, I created folders with subject rest scans in a folder called bold/001 (ex. Jess/V1_REST_STUDY/dicomdir/B101/bold/001). In this folder with raw functional data, I had to create a nifti file of compiled data for all subjects and across subjects it was called f.nii.gz. This is a filenaming that you have to follow for freesurfer to recognize the functional data per subject. I created a necessary link between functional and anatomical scans with the file subjectname containing the name of the anatomical folder in SUBJECTS_DIR for all subjects (ex. Jess/V1_REST_STUDY/dicomdir/B101/subjectname ---- contains ‘B201_mprage,’ the name of this subject’s corresponding anatomical scan folder)

*Where do I run commands?*

If a script is in a folder, run the script and run any commands in the script in that folder. Often, you’ll run command in the project directory. My project directory is called Jess/V1_REST_STUDY/dicomdir. Do run most commands there if unsure.

*Before running commands*

Before freesurfer launches and you can take advantage of its functions, the terminal needs to know where to look to find your desired functions. You can tell the terminal where to look before the start of any freesurfer session, by using the following commands:

export FREESURFER_HOME=/Applications/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh
export SUBJECTS_DIR=/Users/caramazzalab/Desktop/Jess/Subjects

**Terminal**

Here’s a list of useful commands to know for the terminal

cd - change directory
-   cd /Users/caramazzalab/Desktop/Jess brings you from wherever you are to the folder Jess
-   cd .. go back up a folder
-   cd ./Jess go to current directory (.) and within that find the folder Jess and go into that one
pwd - print working directory - where are you now?
ls - list - list all the contents of the current folder

When writing scripts in bash, I suggest a text editor like Sublime. Here are some things to keep in mind
-   Spaces matter in bash
-   Works: variable=”7”
-   Doesn’t work: variable = “7”
-   Before running a script for the first time you need to change permissions
-   Run the following: chmod a+x scriptname.sh
-   The bash extension is .sh, so save your file as filename.sh, change persmissions with chmod if it’s your first use of the file, and run your file with ./filename.sh

**FSL**

I used FSL, which is a GUI and command line program. I used python to generate a file for FSL. I used the GUI for slice time correction. I used the command line for low and high pass filtering.


**Important Pieces of Information:**

* Data Bugs *

Summarize the Abnormalities of Subjects
Anatomical Abnormalities
Table of anatomical abnormalities
Subject ID
Anatomical Abnormality
S02_WAH_mprage
Optic chiasm still included in orbital frontal cortex
Missing small part of the left anterior temporal lobe (ATL)
Too much GM in the RH somatosensory cortex
S03_QYR_mprage
Anterior cingulate cortex missing from GM
S04_ZFJ_mprage
right temporal pole is not fully included in the GM
S07_MJ_mprage
Medial prefrontal lobe, anterior cingulate cortex not fully included in GM
S08_DX_mprage
Anterior temporal lobe not fully included in GM
Top and medial frontal lobes both not fully included in GM
S09_LQ_mprage
Frontal lobe not fully included in GM
B211_mprage
Slightly enlarged ventricles

Functional Abnormalities
DICOM Files Resistant to NIFTI-fication: I had trouble converting S202’s raw dicom files into a nifti file without running into an error with freesurfer’s mri_convert function
Motion Correction:
-   Beware of Jerky Motion:
-   B105 had a jump of ~0.6mm in motion
-   B104 had a jump of ~0.6mm in motion
-   Removing Timepoints: S201 had two major > 1mm jumps of motion @ 2 timepoints therefore, timepoints 37, 38, 39, 164, 165, 166 (TR 1 - 240) were removed
-   Software Error: B110 displays very irregular (head position fluctuates from one position to another every TR for the middle 2/3rd’s of the run) in Freesurfer but seems fine in BrainVoyager - this subject was removed from analysis and from sessid file needed to run preprocessing commands on all subjects
Anatomically Labeled ROIs:
-   The Medial Wall of both the left and right hemispheres wasn’t successfully converted to a mask, and thus no time course was successfully extracted for most subjects
-   As a result, I’ve removed the medial wall from our ROI list


* On Extracting Time Courses*:

All Regions of Interest on the aseg+aparc segmentation based on the freesurfer look up table are in this txt:

List of #’s for each ROI: Jess/V1_REST_STUDY_LUT.txt (load into freeview to visualize parcellations)
List of Anatomically Labeled ROIs: Jess/anat_labeled_regions.txt
List of Segmented by Default ROIs: Jess/default_seg_regions.txt
(This is all the regions compiled into one txt) List of All Potential ROIs: Desktop/Jess/V1_REST_STUDY_LUT.txt

I’m unsure how to extract all our ROIs of interest (listed in Desktop/Jess/V1_REST_STUDY_LUT.txt) but I already extracted ROIs from anatomically labeled regions (listed in Jess/anat_labeled_regions.txt).

If you extract time courses, you can use the matlab file:(Jess/scripts/regress_WM_CSF.m)  to regress out wm and vcsf.

I performed wmvcsf on anatomically labeled ROIs to yield files lh.regioname.wmvcsf.dat BUT I have only extracted and haven’t yet regressed wm, vcsf for default segmented ROIs (filenames are just regioname.dat). For the other regions listed in V1_REST_STUDY_LUT.txt, I haven’t removed any time courses yet.

All the already removed time courses are in each subject folder: B101/bold/001/*.dat.

I’ve already done created wmvcsf regressed time courses for anat_labeled_regions.txt and default_seg_regions.txt


* Files and Places to Lookup and reference*

While all these scripts might not be functional for your analysis, you can look at these scripts and file structure for a general idea of what a command will look like and where to run a command.

Summing Up Files: Here are some good files to know about
General Scripts
Move files: template: Jess/V1_REST_STUDY/dicomdir/move_files.sh ; examples: move_files2.sh, move_files3.sh
Set Up Freesurfer: Jess/freesurfer.sh (copy and paste these lines of code before starting any freesurfer command)
Remove the spaces from filenames in a path: Jess/rename.sh
Anatomical data - data
Anatomical data: Jess/Subjects/B201_mprage/mri/orig.mgz
Subject parcellation labels: Jess/Subjects/B201_mprage/label/lh.V1_exvivo.label
aparc+aseg.mgz segmentations: Jess/Subjects/B201_mprage/mri/aparc+aseg.mgz
mri_label2volume segmentations: Jess/Subjects/B201_mprage/mri/lh.V1_exvivo.mgz
Anatomical data - scripts
View Grey and White Matter Outlines: view-pial-wm.sh
View Inflated Brains: view-inflated.sh
Functional data- data
Functional data before preproc-sess: Jess/V1_REST_STUDY/dicomdir/B102/bold/001/f.nii.gz
Functional data after preproc-sess: Jess/V1_REST_STUDY/dicromdir/B102/bold/001/template.nii
Functional data- scripts
Functional Processing File Structure - How to setup subjectname files in each functional session: CreateTXT.java + format_subjectname.sh
DICOM to NIFTI conversion: dcm_to_nifti.sh
Slice time correction : Jess/slicedelay to create a slicedelay file to pass into an fsl slice time correction program
Low pass filtering: lowpassfilter_fsl.sh
List of #’s for each ROI: Jess/V1_REST_STUDY_LUT.txt (load into freeview to visualize parcellations)
Extracting Anatomically Labeled Time Courses: Jess/extractTC_anat_labeled_regions.sh
List of Anatomically Labeled ROIs: Jess/anat_labeled_regions.txt
Extracting Default Segmentation Time Courses: Jess/extractTC_default_seg_regions.sh
List of Segmented by Default ROIs: Jess/default_seg_regions.txt
Regress WM and VCSF from Time Courses: Jess/scripts/regress_WM_CSF.m
Convert TC files into a Matrix: Jess/build_TC_mat.m
-   This script extracts all subject timecourses from all rois from all hemispheres and loads them to Jess/timecourses/TC_mat.mat
-   Creates:
-   TC_mat.mat = timecourse matrix
-   ROI_legend = n * 2 (n = # ROIs, 1st column = #, 2nd column = ROI)
-   subj_legend = n * 2 (n = # subjs, 1st column = #, 2nd column = subj)
-   Pass the resulting file into into TimeCourseStats1_semi_automated.m
[Be careful to check parameters] Convert TC_mat into Meaningful Correlations: Jess/TimeCourseStats1_semi_automated.m
[not fully automated] Create Histograms to 1. Plot Each Subject’s Correlations or 2. Plot Regional Correlations Across Subjects: Jess/scripts/histograms.m
[not fully automated] Calculate Average Rank and Correlation to V1 For all Regions Across Subjects: Jess/scripts/averages.m

TimeCourseStats1_automated (not done): well formatted for outputs and inputs but doesn’t actually do anything yet – refer to the semi_automated script to design the automated version. For now, this is only one analysis, so the fully automated version isn’t highly motivated.