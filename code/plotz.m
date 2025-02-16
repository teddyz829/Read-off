%% Read voxel file and plot z view
% Wentai Zhang
% 2018/01/10
clear;
close all;
clc;
%%
data = load('airplane_vox.mat');
vox = data.airplane_vox;

for i = 1:size(vox,1)
   
    air = vox(i,:);
    air = reshape(air,[30,30,30]);
    air_xy = squeeze(sum(air,3));
    if mod(i-1,25)==0
       
        figure;
        
    end
    m = mod(i-1,25);
    m = m+1;
    
    subplot(5,5,m);
    imshow(air_xy);
    xlabel(sprintf('%u',i));
    
end