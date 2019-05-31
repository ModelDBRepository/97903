%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_SVREndoCalmod.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------


% Experiment Specific Parameters
NameExperiment= 'CSESVREndoCalmod' ;
ExpDir='ExpSVREndoCalmod';
Observable=     'Dye';
% 	LoopVar2=KMinus_EndogenousBuffer*10
% 	LoopVar=KPlus_EndogenousBuffer*1000
%   for KMinus_EndogenousBuffer = 0.25 to 10 step 0.25
%   for KPlus_EndogenousBuffer  = 0.5  to 20 step 0.5


FirstVarName=   'Total_EndogenousBuffer';
SecondVarName=  'SVR_EndogenousBuffer';
FirstVarMeshParams      =  0.25:0.25:10 ;            % KPlus_EndogenousBuffer 
FirstVarFileMesh        =  25:25:1000;            % Numbering of SecondVar in filename beginvalue:stepsize:endvalue 
FirstVarSubset          =   [];

FirstVarSubsetIndex =       FirstVarSubset./10;
SecondVarMeshParams     =    25:25:1000;            % Total_Endogenous Buffer   beginvalue:stepsize:endvalue in uM  
SecondVarFileMesh       =   25:25:1000;            % Numbering of FirstVar in filename beginvalue:stepsize:endvalue
FirstFig=   11;
SecondFig=  12;

DyeTotal=10;

loadfrompar=1;
makeFigures=1;
run CaSignal_ExpMain12

