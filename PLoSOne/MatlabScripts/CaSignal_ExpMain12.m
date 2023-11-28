%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_ExpMain12.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

Path='..\Output\';
SimDataPath=[Path,ExpDir];
addpath(genpath(SimDataPath))
addpath(genpath('.'))

% Formats for output
imageformat=['jpg';'pdf';'fig'];

% Geometries
DiskGeometry='D_';
SphereGeometry='S_';

% Data Preprocessing
    %Dendritic
    
    Geometry=DiskGeometry;
    PlotsFileName=[Path,NameExperiment,Geometry,'_',Observable,'_Plot.mat'];
    if(loadfrompar==1)
        run CaSignal_PreProcessData12
%         clear functions         % Remove processed files from memory
    else
       load(PlotsFileName)
    end

    %Spine
    Geometry=SphereGeometry;
    PlotsFileName=[Path,NameExperiment,Geometry,'_',Observable,'_Plot.mat'];
    if(loadfrompar==1)
        run CaSignal_PreProcessData12
%         clear functions         % Remove processed files from memory
    else
       load(PlotsFileName)
    end
    
% Make figures
    if(makeFigures==1)
        %Dendritic
        Geometry=DiskGeometry;
        PlotsFileName=[Path,NameExperiment,Geometry,'_',Observable,'_Plot.mat'];

        RiseLimits=[4.4,5.0];
        DecayLimits=[180,220];
        if(halfinterval==1)
            RiseLimits=[4.55,4.7,4.85];
            DecayLimits=[190,200,210];
        end
        RiseColor='r';
        DecayColor='b';
        run CaSignal_MakeFigures12

        %Spine 
        Geometry=SphereGeometry;
        PlotsFileName=[Path,NameExperiment,Geometry,'_',Observable,'_Plot.mat'];
        RiseLimits=[3.1,3.4];
        DecayLimits=[80,100];
        if(halfinterval==1)
            RiseLimits=[3.175,3.25,3.325];
            DecayLimits=[85,90,95];
        end
        RiseColor='r';
        DecayColor='b';
        run CaSignal_MakeFigures12
    end
