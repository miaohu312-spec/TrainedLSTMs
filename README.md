# Trained LSTM Models for Response Spectrum Conversion

This repository provides trained MATLAB-based LSTM models for response spectrum conversion.

## Contents

The repository includes five trained LSTM models:

- `LSTM-K1.mat`
- `LSTM-K2.mat`
- `LSTM-K3.mat`
- `LSTM-K4.mat`
- `LSTM-K5.mat`

These five models correspond to the trained models obtained from five-fold cross-validation. In other words, each `.mat` file represents the model trained in one fold of the cross-validation procedure.

An example MATLAB script for model prediction is also provided:

- `for_LSTM.m`

## Purpose

The trained LSTM models in this repository are developed for response spectrum conversion. Given the input parameters, the models directly predict spectral conversion relationships and can be used to transform a reference response spectrum into target spectral quantities.

## Input Parameters

The models use the following normalized input parameters:

- `Vs30`
- damping ratio
- spectral shape factor

## Output Order

Each model outputs a vector with 75 entries:

- entries 1–25: `SA/PSA` at 25 period points
- entries 26–50: `SV/PSVSD` at 25 period points
- entries 51–75: `SV/PSVSA` at 25 period points

## Notes

- `LSTM-K1.mat` to `LSTM-K5.mat` are not different model types; they are the five trained models corresponding to the five folds in the cross-validation process.
- The models are trained using Japanese strong-motion records.
- Applicability to other regions or tectonic settings should be further validated before use.
