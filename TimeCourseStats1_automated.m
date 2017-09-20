%  Calculate connectivity values and rankings to a seed region.
%  To calculate stats, load in a matrix of timecourses for the seed region
%  and all other ROIs across all subjects in a group
%
%  Suggested Use: Repeat this calculation for all groups in your study
%  e.g. blindV1_pearsonR = TimeCourseStats1 (... blind_subj_timcourses ...)
%       sightV1_pearsonR = TimeCourseStats1 (... sight_subj_timcourses ...)
%  
%  Suggested Visualization: Use the function, VisualizeTimeCourseStats1 to
%  generate histograms for the distributions of regional correlations and
%  regional rankings across subjects
%
%  Usage: output_name = TimeCourseStats1(timecourses, seed_ind, ...
%                       s_labels, ROI_labels, R_type)
%  
%  timecourses  - 	an (m * t * n) matrix of timecourses from
%                    m ROIs (including the seed)
%                    t time points
%                    n subjects.
%  
%  seed_ind  -  the index of seed ROI in rows of timecourses mat
%
%  s_labels  -  an n * 2 character array:
%                       column 1: indices of each subj in timecourses mat
%                       column 2: strings of each subj name/ ID
%                 e.g. 
%                       1   B101
%                       2   B102
%                       3   B103
%                       4   B104
%
%  ROI_labels  -  an m * 2 character array:
%                       column 1: indices of each ROI in timecourses mat
%                       column 2: strings of each ROI name
%                 e.g. 
%                       1   V2
%                       2   V3
%                       3   LGN
%                       4   Thalamus
%
%  R_type  -  choose between Pearson's Correlation 'pear' or
%             Partial Correlation 'par'
%
%
%  Returned values:
%  
%  output_name structure:
%
%	subject_report -   for each of n subjects, create a summary of ...
%                      ranks and corrs
%       1
%           subject_name
%           subject_ranks
%           subject_corrs
%       2.
%           subject_name
%           subject_ranks
%           subject_corrs
%       3.
%           subject_name
%           subject_ranks
%           subject_corrs
%       .
%       .
%       .
%       n.
%           subject_name
%           subject_ranks
%           subject_corrs
%
%	group_report -	across all subjects, report the following structure:
%       ranked_corrs - for each ranking, report correlation across subj
%                           column 1: ROI rank 
%                           column 2: subject 1's ROI rank's corr
%                           column 3: subject 2's ROI rank's corr
%                           ...
%                           column n+1: subject n's ROI rank
%                       THUS, row x: xth ranked ROI's correlation across
%                       subj
%                       rank    subj 1 corr     subj 2 corr     subj 3 corr
%                        1          0.7             0.8             0.5
%                        2          0.65            0.6             0.4
%                        3          0.5             0.3             0.39
%       ranked_regions - for each ranking, report region name across subj
%                           column 1: ROI rank 
%                           column 2: subject 1's ROI rank's region name
%                           column 3: subject 2's ROI rank's region name
%                           ...
%                           column n+1: subject n's ROI rank
%                       THUS, row x: xth ranked ROI's region name across
%                       subj
%                       rank    subj 1 reg      subj 2 reg      subj 3 reg
%                        1          V2              V2             V2
%                        2          V3              V3             IGN
%                        3          IGN             IGN            V3
%       regional_corrs - for each region, report correlation across subj
%                           column 1: ROI name 
%                           column 2: subject 1's ROI's corr
%                           column 3: subject 2's ROI's corr
%                           ...
%                           column n+1: subject n's ROI rank
%                       THUS, row x: xth ROI's correlation across subj
%                       ROI    subj 1 corr     subj 2 corr     subj 3 corr
%                        V2         0.7             0.8             0.5
%                        V3         0.65            0.6             0.39
%                        LGN        0.5             0.3             0.4
%       regional_ranks - for each region, report ranks across subj
%                           column 1: ROI name 
%                           column 2: subject 1's ROI's rank
%                           column 3: subject 2's ROI's rank
%                           ...
%                           column n+1: subject n's ROI rank
%                       THUS, row x: xth ROI's correlation across subj
%                       ROI    subj 1 rank     subj 2 rank     subj 3 rank
%                        V2         1              1               1
%                        V3         2              2               3
%                        LGN        3              3               2
%
%	group_stats - 	structure with the following elements:
%       regional_avg_ranks
%       regional_avg_corrs
%       regional_std_ranks
%       regional_std_corrs
%       avg_ranked_regions
%
%  
%  - Jess Huang (jess.huang.98@gmail.com)
%
function [ output_args ] = TimeCourseStats1( input_args )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


end

