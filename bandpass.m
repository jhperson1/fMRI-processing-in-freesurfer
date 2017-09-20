%% SPM's loading and saving Nifti files
path = '/Users/caramazzalab/Desktop/Jess/';
addpath('/Users/caramazzalab/Downloads/spm12');

subjects = dir('/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir/*');
file = 'f.nii.gz';
low_cut = 0.01;
high_cut = 0.1;
cutFromEachEdge = 0; %he added TD cropping here, we apply it elsehwere
TR_sec=2;
SamplingRate=(1/TR_sec); 

for subj = subjects'
    if (strcmp(subj.name, '.') ...
        | strcmp(subj.name, '..') ...
        | strcmp(subj.name, 'log')) % already tested code on this one
        % do nothing if the file is not a subject name
    elseif(subj.isdir)
        disp(subj.folder);
        disp(subj.name);
        % for filenames that are a directory 
        % (i.e. filenames that are subjects)
        % establish filename
        folder = subj.folder;
        name = subj.name;
        extension = '/bold/001/';
        f = ischar(folder)
        n = ischar(name)
        e = ischar(extension)
        filedir = strcat(folder, '/', name, extension);
        path = filedir;
        filename = strcat(path, file);
        disp(strcat('The filename is: ', filename));
        % load nifti
        nii = spm_vol(filename);
        % read data
        data = spm_read_vols(nii);
        disp('nii has been loaded');
        [x, y, z, t] = size(data);
        disp('entering the for loop');
        for i = 1 : x
            for j = 1 : y
                for k = 1 : z
                    TC = im2double(data(i, j, k, :));
                      if ( mean(TC) > 10)
                        tmp = bandpassElla(TC, SamplingRate, low_cut, high_cut);
                        newTC = ((tmp(1+cutFromEachEdge:end-cutFromEachEdge,1))+ mean(TC)) ;
                        data(i, j, k, :) = newTC;
                      end  
                end
            end
        end
        disp('exiting the for loop');
        nii_new = nii;
        % set the output file
        nii_new.fname='f_lpf.nii.gz';
        spm_write_vol(nii_new, data);
        disp('successfully saved the timecourse');
        mv 'f_lpf.nii.gz' path
    else
        % do nothing if the file is not a subject name
    end
end

%% Jimmy Shen's Loading and Saving Nifti Files

% 
% path = '/Users/caramazzalab/Desktop/Jess/';
% addpath('/Users/caramazzalab/Downloads/NIfTI_20140122');
% 
% subjects = dir('/Users/caramazzalab/Desktop/Jess/V1_REST_STUDY/dicomdir/*');
% file = 'f.nii.gz';
% low_cut = 0.01;
% high_cut = 0.1;
% cutFromEachEdge = 0; %he added TD cropping here, we apply it elsehwere
% TR_sec=2;
% SamplingRate=(1/TR_sec); 
% 
% for subj = subjects'
%     if (strcmp(subj.name, '.') ...
%         | strcmp(subj.name, '..') ...
%         | strcmp(subj.name, 'log')...
%         | strcmp(subj.name, 'B101')) % already tested code on this one
%         % do nothing if the file is not a subject name
%     elseif(subj.isdir)
%         disp(subj.folder);
%         disp(subj.name);
%         % for filenames that are a directory 
%         % (i.e. filenames that are subjects)
%         % establish filename
%         folder = subj.folder;
%         name = subj.name;
%         extension = '/bold/001/';
%         f = ischar(folder)
%         n = ischar(name)
%         e = ischar(extension)
%         filedir = strcat(folder, '/', name, extension);
%         path = filedir;
%         disp(path);
%         filename = strcat(path, file);
%         disp(filename);
%         nii = load_nii(filename);
%         disp('nii has been loaded');
%         [x, y, z, t] = size(nii.img);
%         disp('entering the for loop');
%         for i = 1 : x
%             for j = 1 : y
%                 for k = 1 : z
%                     TC = im2double(nii.img(i, j, k, :));
%                       if ( mean(TC) > 10)
%                         tmp = bandpassElla(TC, SamplingRate, low_cut, high_cut);
%                         newTC = ((tmp(1+cutFromEachEdge:end-cutFromEachEdge,1))+ mean(TC)) ;
%                         nii.img(i, j, k, :) = newTC;
%                       end  
%                 end
%             end
%         end
%         disp('exiting the for loop');
%         save_nii(nii, 'f.lpf.nii.gz');
%         disp('successfully saved the timecourse');
%         mv 'f.lpf.nii.gz' path
%     else
%         % do nothing if the file is not a subject name
%     end
% end
