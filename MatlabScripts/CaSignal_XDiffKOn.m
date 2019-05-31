%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_XDiffKOn.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------


% Experiment Specific Parameters
NameExperiment= 'CSEXDiffKOn' ;
ExpDir='ExpXDiffKOn';
Observable=     'Dye';


FirstVarName=  'XDiff';
SecondVarName=  'KPlus_Dye';
FirstVarMeshParams      =   0.05:0.05:2.0;         % Diffusion constant calcium
FirstVarFileMesh        =   5:5:200;                % Numbering of FirstVar in filename beginvalue:stepsize:endvalue

FirstVarSubset          =   [];
FirstVarSubsetIndex =       FirstVarSubset./10;
SecondVarMeshParams     =   0.025:0.025:1 ;       % KPlus_Dye
SecondVarFileMesh       =  25:25:1000;            % Numbering of SecondVar in filename beginvalue:stepsize:endvalue 
FirstFig=   11;
SecondFig=  12;

DyeTotal=100;

loadfrompar=1;
makeFigures=1;
run CaSignal_ExpMain12

