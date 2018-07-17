%% abet2mat example
clc; clear variables; close all;

% Call function to import trial, ITI, reward collection, and IR data
[trials, ir] = abet2mat('data.xml','data.csv');

% Example on how to plot trials and reward collection times
plot_abet(trials);