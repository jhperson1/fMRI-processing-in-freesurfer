% averages

%% blind lh
clear
clc

load('blind_lh.V1_TCS1.mat');

% calculate average corr
[n_r, n_s] = size(regional_corrs)
avg_regional_corr = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_corrs(r, :);
    avg_regional_corr(r, 1) = mean(v);
end
blind_lhV1_avg_regional_corr = avg_regional_corr;
save('blind_lhV1_avg_regional_corr', 'blind_lhV1_avg_regional_corr');

% calculate average rank
[n_r, n_s] = size(regional_ranks)
avg_regional_rank = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_ranks(r, :);
    avg_regional_ranks(r, 1) = mean(v);
end
blind_lhV1_avg_regional_ranks = avg_regional_ranks;
save('blind_lhV1_avg_regional_ranks', 'blind_lhV1_avg_regional_ranks')

%% sight lh
clear
clc

load('sight_lh.V1_TCS1.mat');

% calculate average corr
[n_r, n_s] = size(regional_corrs)
avg_regional_corr = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_corrs(r, :);
    avg_regional_corr(r, 1) = mean(v);
end
sight_lhV1_avg_regional_corr = avg_regional_corr;
save('sight_lhV1_avg_regional_corr', 'sight_lhV1_avg_regional_corr');

% calculate average rank
[n_r, n_s] = size(regional_ranks)
avg_regional_rank = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_ranks(r, :);
    avg_regional_ranks(r, 1) = mean(v);
end
sight_lhV1_avg_regional_ranks = avg_regional_ranks;
save('sight_lhV1_avg_regional_ranks', 'sight_lhV1_avg_regional_ranks')

%% blind rh
clear
clc

load('blind_rh.V1_TCS1.mat');

% calculate average corr
[n_r, n_s] = size(regional_corrs)
avg_regional_corr = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_corrs(r, :);
    avg_regional_corr(r, 1) = mean(v);
end
blind_rhV1_avg_regional_corr = avg_regional_corr;
save('blind_rhV1_avg_regional_corr', 'blind_rhV1_avg_regional_corr');

% calculate average rank
[n_r, n_s] = size(regional_ranks)
avg_regional_rank = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_ranks(r, :);
    avg_regional_ranks(r, 1) = mean(v);
end
blind_rhV1_avg_regional_ranks = avg_regional_ranks;
save('blind_rhV1_avg_regional_ranks', 'blind_rhV1_avg_regional_ranks')

%% sight rh
clear
clc

load('sight_rh.V1_TCS1.mat');

% calculate average corr
[n_r, n_s] = size(regional_corrs)
avg_regional_corr = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_corrs(r, :);
    avg_regional_corr(r, 1) = mean(v);
end
sight_rhV1_avg_regional_corr = avg_regional_corr;
save('sight_rhV1_avg_regional_corr', 'sight_rhV1_avg_regional_corr');

% calculate average rank
[n_r, n_s] = size(regional_ranks)
avg_regional_rank = zeros(n_r, 1);
for r = 1 : n_r
    v = regional_ranks(r, :);
    avg_regional_ranks(r, 1) = mean(v);
end
sight_rhV1_avg_regional_ranks = avg_regional_ranks;
save('sight_rhV1_avg_regional_ranks', 'sight_rhV1_avg_regional_ranks')