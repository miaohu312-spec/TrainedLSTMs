% example_prediction.m
% Example script for LSTM prediction

clear; clc;

% ---------------------------------
% Step 1: Prepare one input sample
% ---------------------------------
% Replace the following values with your own normalized inputs
% Row 1 = normalized Vs30
% Row 2 = normalized damping ratio
% Row 3 = spectral shape factor
XTest = [0.5331; 0.1111; 0.0018];

% ---------------------------------
% Step 2: Run prediction
% ---------------------------------
load('LSTM-K4.mat', 'net');
result=predict(net,XTest);
