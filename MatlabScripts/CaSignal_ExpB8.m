%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_ExpB8.m
% Author:   Ronald van Elburg
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

TotalEndogenousBuffer=45
DyeTotal = 100;            % muM
Nshells = 6;               % number of shells in the output (NOT IN THE SIMULATION, THERE THE GRIDSIZE DEFINES THE COMPARTMENTS)
R=1;
dR=R/Nshells;

Path=[rootdir,'\Output\ExpB8']
for subexp={'A','B','C','D','E','F','G','H','Gb','Hb','G_D0','H_D0'}
    addpath(genpath([Path,cell2mat(subexp)]))
end
imageformat=['jpg';'pdf';'fig']

%%    
NameExperiment='CSEB8A'
    run CaSignal_Exp8ALoadData
    figureno1=811;
    figureno2=812;
    figureno3=813;
    figureno4=814;
    run CaSignal_Exp8A
    run CaSignal_Exp8A2

%%       
NameExperiment='CSEB8B'
    run CaSignal_Exp8BLoadData
    figureno1=821;
    figureno2=822;
    figureno3=823;
    figureno4=824;
    run CaSignal_Exp8A
     run CaSignal_Exp8A2

%%     
% NameExperiment='CSEB8C'
%     run CaSignal_Exp8CLoadData
%     figureno1=831;
%     figureno2=832;
%     figureno3=833;
%     figureno4=834;
%     run CaSignal_Exp8A
%      run CaSignal_Exp8A2
%%     
% NameExperiment='CSEB8D'
%     run CaSignal_Exp8DLoadData
%     figureno1=841;
%     figureno2=842;
%     figureno3=843;
%     figureno4=844;
%     run CaSignal_Exp8A
%      run CaSignal_Exp8A2

%%          
NameExperiment='CSEB8E'
    run CaSignal_Exp8ELoadData
    figureno1=851;
    figureno2=852;
    figureno3=853;
    figureno4=854;
    run CaSignal_Exp8A
    
    figureno1=855;
    figureno2=856;
    figureno3=857;
    run CaSignal_Exp8A2
    
    figureno1=858;
    figureno2=859;
    figureno3=85101;
    figureno4=85102;
    run CaSignal_Exp7A
      

%%         
NameExperiment='CSEB8F'
    run CaSignal_Exp8FLoadData
    figureno1=861;
    figureno2=862;
    figureno3=863;
    figureno4=864;
    run CaSignal_Exp8A
    run CaSignal_Exp8A2
% %%     
%  NameExperiment='CSEB8G'
%      figureno1=871;
%      figureno2=872;
%      figureno3=873;
%      run CaSignal_Exp8G
% %%      
% NameExperiment='CSEB8H'
%     figureno1=881;
%     figureno2=882;
%     figureno3=883;
%     run CaSignal_Exp8G
%%      
 NameExperiment='CSEB8Gb'
     figureno1=891;
     figureno2=892;
     figureno3=893;
     run CaSignal_Exp8Gb

%%
NameExperiment='CSEB8Hb'
    figureno1=8101;
    figureno2=8102;
    figureno3=8103;
    run CaSignal_Exp8Gb

   
