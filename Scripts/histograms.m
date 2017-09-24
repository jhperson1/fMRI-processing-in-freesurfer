% here are some sample graphs one might be able to make
% after running TimeCourseStats1_semi_automated.m

%% blind lh subject correlations
clear
clc

load('blind_subj_legend.mat');
subj_legend = blind_subj_legend(:, 2);
load('blind_lh.V1_TCS1.mat');
[n_r, n_s] = size(regional_corrs);

% for each subject, plot correlation between V1 and ROI
for s = 1 : n_s
    figure
    X = ROI_results_legend(:, 2);
    Y = regional_corrs(:, s);
    b = bar(Y);
    set(gca,'XTick',[1:1:n_r])
    set(gca,'XTickLabel',X)
    hold on
    ylim([-1 1]);
    title_str = strcat("Blind Subject ", subj_legend(s), ": ROI Correlation to LH V1");
    title(char(title_str))
    xlabel('ROI')
    ylabel('correlation')
end

%% sight lh subject correlations
clear
clc

load('sight_subj_legend.mat');
subj_legend = sight_subj_legend(:, 2);
load('sight_lh.V1_TCS1.mat');
[n_r, n_s] = size(regional_corrs);

% for each subject, plot correlation between V1 and ROI
for s = 1 : n_s
    figure
    X = ROI_results_legend(:, 2);
    Y = regional_corrs(:, s);
    b = bar(Y);
    set(gca,'XTick',[1:1:n_r])
    set(gca,'XTickLabel',X)
    hold on
    ylim([-1 1]);
    title_str = strcat("Sighted Subject ", subj_legend(s), ": ROI Correlation to LH V1");
    title(char(title_str))
    xlabel('ROI')
    ylabel('correlation')
end

%% blind rh subject correlations
clear
clc

load('blind_subj_legend.mat');
subj_legend = blind_subj_legend(:, 2);
load('blind_rh.V1_TCS1.mat');
[n_r, n_s] = size(regional_corrs);

% for each subject, plot correlation between V1 and ROI
for s = 1 : n_s
    figure
    X = ROI_results_legend(:, 2);
    Y = regional_corrs(:, s);
    b = bar(Y);
    set(gca,'XTick',[1:1:n_r])
    set(gca,'XTickLabel',X)
    hold on
    ylim([-1 1]);
    title_str = strcat("Blind Subject ", subj_legend(s), ": ROI Correlation to RH V1");
    title(char(title_str))
    xlabel('ROI')
    ylabel('correlation')
end

%% sight rh subject correlations
clear
clc

load('sight_subj_legend.mat');
subj_legend = sight_subj_legend(:, 2);
load('sight_rh.V1_TCS1.mat');
[n_r, n_s] = size(regional_corrs);

% for each subject, plot correlation between V1 and ROI
for s = 1 : n_s
    figure
    X = ROI_results_legend(:, 2);
    Y = regional_corrs(:, s);
    b = bar(Y);
    set(gca,'XTick',[1:1:n_r])
    set(gca,'XTickLabel',X)
    hold on
    ylim([-1 1]);
    title_str = strcat("Sighted Subject ", subj_legend(s), ": ROI Correlation to RH V1");
    title(char(title_str))
    xlabel('ROI')
    ylabel('correlation')
end

%% blind lh regional correlations across subjects
clear
clc

load('blind_lh.V1_TCS1.mat');

% for each region, correlations across all subjects
for r = 1 : 29
    figure
    h = hist(regional_corrs(r, :));
    hold on
    xlim([0 1]);
    title_str = strcat(legend(r, 2), ": Distribution of Correlation to Blind LH V1");
    title(char(title_str))
    xlabel('Absolute Value of Correlation')
    ylabel('Frequency Across Subjects')
end