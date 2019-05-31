%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Master.m
% Author:   Ronald van Elburg
%
% Description: This file can be used to generate all model figures from the paper.
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
%% Figure 3 Constraining Influx and Efflux and Showing Constrained Result
close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_DtGamma
close all; clear variables;halfinterval=1;plotMaxAct=0;plotIntAct=0; 
run CaSignal_DtGammaII
close all; clear variables;
run DtGamma_MergedAtomics
close all; clear variables;
run DtGammaII_MergedAtomics
close all; clear variables;
run CaSignal_Exp7
close all; clear variables;
run CaSignal_Exp4D
%% Figure 4 Influence Diffusion Effects
close all; clear variables;
run CaSignal_Exp3

close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_XDiffKOn
close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_XDiffKOnTraces
close all; clear variables;
run XDiffKOn_MergedAtomics

%% Figure 5 Influence Endogenous Buffer Parameters

close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_KdEndoTraces
close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_KdEndo
close all; clear variables; 
run KdEndo_MergedAtomics

close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_KOnKOffTraces
close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_KOnKOff
close all; clear variables;
run KOnKOff_MergedAtomics

%% Figure 6 Interaction between Endogenous Buffer and Geometry
close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_SVREndoTraces
close all; clear variables;halfinterval=0;plotMaxAct=0;plotIntAct=0; 
run CaSignal_SVREndo
close all; clear variables;
run SVREndo_MergedAtomics

%% Figure 7 Behavior of Model with Parvalbumin, Calmodulin and Calbindin
%%          as Endogenous Mobile Buffer. 
close all; clear variables;
run CaSignal_ExpB8
close all; clear variables; 
run FreeCalcium4EndoBufs_MergedAtomics

close all; clear variables;halfinterval=0;plotMaxAct=1;plotIntAct=1; 
run CaSignal_SVREndoCalmod
close all; clear variables; 
run SVREndoCalmod_MergedAtomics

%% Supplementary Figure Influence Diffusion Effects II
% Generated with figure 4.


