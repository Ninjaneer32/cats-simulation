# CATS Simulation

<img src="https://github.com/catsystems/cats-docs/blob/main/logo/PNG/logo_with_smile.png" alt = "CATS Logo" width="300" height="300">

*Always land on your paws*

## Open Source
All CATS code is open source and can be used free of charge without warranty. 

## Introduction

This repo includes all flight simulation and testing for the kalman filter.

### Simulator

The *Simulator* folder includes a working version of a simulation tool. This project is unforunately frozen in place until further notice.

### Sim

The *sim* folder includes a python simulation where sensor data is loaded and where the attitude and velocity kalman filter can be tested. 
Aditionally, there is a file which can generate polynomials from certain flight logs for replay on the CATS Vega through the simulation tool.

### Verification

In the Verification folder, our very simple HIL tool can be found. This is also work in progress.