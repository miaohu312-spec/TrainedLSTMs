% example_prediction.m
% Example script for LSTM prediction using raw input parameters

clear; clc;

% ---------------------------------
% Step 1: Input raw parameters
% ---------------------------------
% Please input raw values here:
Vs30_raw = 1437.37;          % unit: m/s
xi_raw   = 0.20;         % damping ratio, e.g. 0.05 for 5%
zetaPSA  = 0.0002;       % spectral shape factor = PSA(6s)/PGA

% ---------------------------------
% Step 2: Normalize input parameters
% ---------------------------------
% Normalization ranges used in this study
Vs30_min = 105.7;
Vs30_max = 2100;

xi_min = 0.05;
xi_max = 0.50;

% Min-max normalization
Vs30_norm = (Vs30_raw - Vs30_min) / (Vs30_max - Vs30_min);
xi_norm   = (xi_raw   - xi_min)   / (xi_max   - xi_min);

% zetaPSA is directly used because it is already within [0,1]
zetaPSA_norm = zetaPSA;

% Construct input vector
XTest = [Vs30_norm; xi_norm; zetaPSA_norm];

% Step 3: Run prediction
% ---------------------------------
load('LSTM-K1.mat', 'net');
result = predict(net, XTest);

% ---------------------------------
% Step 5: Display result
% ---------------------------------
disp('Prediction result:');
disp(result);
