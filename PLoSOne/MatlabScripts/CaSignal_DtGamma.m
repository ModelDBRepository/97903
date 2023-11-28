%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_DtGamma.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

% Experiment Specific Parameters
NameExperiment= 'CSEDtGamma' ;
ExpDir='ExpDtGamma';
Observable=     'Dye';
SecondVarName=  'ExtrusionRate';
%   LoopVar=n_ions/250
% 	LoopVar2=10*pulselength
% 	for n_ions = 250 to 10000 step 250
% 	for pulselength	 = 0.1 to 4 step 0.1


FirstVarMeshParams      =   0.1:0.1:4;              % pulselength (ms)
FirstVarFileMesh        =   1:1:40;                 % Numbering of FirstVar in filename beginvalue:stepsize:endvalue
FirstVarSubset          =   [];
FirstVarSubsetIndex =       FirstVarSubset./10;
SecondVarMeshParams     = 0.025:0.025:1;%; -1:0.025:-0.025 ;         % mingamma0 (uM/ms)
SecondVarFileMesh       = 25:25:1000; %1000:-25:25     ;        % Numbering of SecondVar in filename beginvalue:stepsize:endvalue

FirstFig=   11;
SecondFig=  12;

DyeTotal=100;

loadfrompar=1;
makeFigures=1;
run CaSignal_ExpMain12

