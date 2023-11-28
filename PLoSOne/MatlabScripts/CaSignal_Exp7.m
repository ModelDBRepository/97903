%------------------------------------------------------------------------------------------
%
% Title: 	Calcium Signals in Small Structures
% Filename:	CaSignal_Exp7.m
% Author: 	Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

clear;
cd ..
rootdir=pwd
cd MatlabScripts

addpath(genpath('..\MatlabScripts'))
addpath(genpath('..\Output\Exp7A'))
addpath(genpath('..\Output\Exp7B'))
addpath(genpath('..\Output'))

TotalEndogenousBuffer=45
DyeTotal = 100;            % muM
Nshells = 6;               % number of shells in the output (NOT IN THE SIMULATION, THERE THE GRIDSIZE DEFINES THE COMPARTMENTS)
R=1;
dR=R/Nshells;


% Path='D:\CaSims\CalciumInSpine\CalC\Output_gamma0_6\'
Path=[rootdir,'\Output\Exp7A']
imageformat=['jpg';'pdf';'fig']


NameExperiment='CSE7A'
run CaSignal_Exp7ALoadData
figureno1=711
figureno2=712
figureno3=7131
figureno4=7132
run CaSignal_Exp7A

% Figure C is made with the same param settings as figure A
NameExperiment='CSE7C'
run CaSignal_Exp7C



% NameExperiment='CSE7B'
% run CaSignal_Exp7BLoadData
% figureno1=721
% figureno2=722
% figureno3=7231
% figureno4=7232
% run CaSignal_Exp7A

