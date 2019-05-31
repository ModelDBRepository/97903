%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_DtGammaII.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

% Experiment Specific Parameters
NameExperiment= 'CSEDtGammaII' ;
ExpDir='ExpDtGammaII';
Observable=     'Dye';
SecondVarName=  'ExtrusionRate';
%   LoopVar=n_ions/250
% 	LoopVar2=10*pulselength
% 	for n_ions = 250 to 10000 step 250
% 	for pulselength	 = 0.1 to 4 step 0.1


FirstVarMeshParams      =   0.55:0.05:2.50;              % pulselength (ms)
FirstVarFileMesh        =   55:5:250;                 % Numbering of FirstVar in filename beginvalue:stepsize:endvalue
FirstVarSubset          =   [];
FirstVarSubsetIndex =       FirstVarSubset./10;
SecondVarMeshParams     =  -0.55:0.005:-0.355 ;         % mingamma0 (uM/ms)
SecondVarFileMesh       =   550:-5:355;        % Numbering of SecondVar in filename beginvalue:stepsize:endvalue

FirstFig=   11;
SecondFig=  12;

DyeTotal=100;

loadfrompar=1;
makeFigures=1;
run CaSignal_ExpMain12

