%% abet2mat example
% Jon Kenny (jkenny@caltech.edu)
% Be on the lookout for any bugs
clc; clear variables; close all;

% Call function to import trial, ITI, reward collection, and IR data
[trials, ir] = abet2mat('data.xml','data.csv');

% Example on how to plot trials and reward collection times
plot_abet(trials);
