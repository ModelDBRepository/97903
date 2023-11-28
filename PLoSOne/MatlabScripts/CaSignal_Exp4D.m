%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp4D.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
clear all;
close all
addpath(genpath('.'))
addpath(genpath('..\Output\Exp4D'))
BlueRedMap= [ 0 0 1
              1 0 0 ]

RedBlueMap= [ 1 0 0
              0 0 1]
% TotalEndogenousBuffer=45
DyeTotal = 100;            % muM
Nshells = 6;               % number of shells in the output (NOT IN THE SIMULATION, THERE THE GRIDSIZE DEFINES THE COMPARTMENTS)
R=1;
dR=R/Nshells;


Path='..\Output\Exp4D'
imageformat=['jpg';'pdf';'fig']


NameExperiment='CSE4D'
run CaSignal_Exp4DLoadData
load RiseTraces

figureno1=441
figureno2=442
figureno3=4431
figureno4=4432
run CaSignal_Exp7A
        
Observable='BoundDyeAverage' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

%%
% get the number of fileformats to which we want to save
[height_imageformat,width_imageformat]=size(imageformat);

Observable='BoundDyeAverageRisePhase' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


     
    f1=openfig('..\Output\Exp7ACSE7ABoundDyeAverageRisePhase_Time_Plot.fig');
    dummy_axeshandle1=gca
    
    f2=openfig('..\Output\Exp7ACSE7CBoundDyeStepsAfterSpikeTrains_PeakNo_Plot.fig');
    subplot(1,2,1)
    dummy_axeshandle2=gca
    subplot(1,2,2)
    dummy_axeshandle3=gca
            
            
    figure(figureno2*10+1);
        clf
        subplot(2,3,1)
            hold on;
            % Plot Calcium Traces from the Cylinder/Dendrite
            D_BoundDyeNorm=NormalizeSignal(DyeTotal-D_DyeAverage(:,2));
            plot(D_DyeAverage(:,1), D_BoundDyeNorm, 'b', 'LineWidth', 2)

            % Plot Calcium Traces from the Sphere/Spine
            S_BoundDyeNorm=NormalizeSignal(DyeTotal-S_DyeAverage(:,2));
            plot(S_DyeAverage(:,1), S_BoundDyeNorm, 'r', 'LineWidth', 2)
            % Set the area to be plotted
            axis([5,20,0,110])

            % Set the fontsize
            set(gca, 'FontSize', 20)

            % Set figure name
            set(gcf,'name',Observable)

        subplot(2,3,2)
            hold on;


            % Plot Calcium Traces from the Cylinder/Dendrite
            D_BoundDyeNorm=NormalizeSignal(DyeTotal-D_DyeAverage(:,2));
            plot(D_DyeAverage(:,1), D_BoundDyeNorm, 'b', 'LineWidth', 2)
            plot(data(:,4)+8.5,105*data(:,5)/max(data(:,5)),'b')


            % Set the area to be plotted
            axis([5,20,0,110])

            % Set the fontsize
            set(gca, 'FontSize', 20)

            % Set figure name    
            set(gcf,'name',Observable)  


        subplot(2,3,3)
            hold on;

            % Plot Calcium Traces from the Sphere/Spine
                S_BoundDyeNorm=NormalizeSignal(DyeTotal-S_DyeAverage(:,2));
                plot(S_DyeAverage(:,1), S_BoundDyeNorm, 'r', 'LineWidth', 2)
                plot(data(:,1)+8.5,110*data(:,2)/max(data(:,2)),'r')

            % Set the area to be plotted
                axis([5,20,0,110])

            % Set the fontsize
                set(gca, 'FontSize', 20)

            % Set figure name    
                set(gcf,'name',Observable)  


           
       axeshandle=subplot(2,3,4)
            swapfigures(axeshandle,dummy_axeshandle1)
            % Set the area to be plotted
                axis([5,150,0,110])

            % Set the fontsize
                set(gca, 'FontSize', 20)

            % Set figure name    
                set(gcf,'name',Observable)  

        axeshandle=subplot(2,3,5)
            swapfigures(axeshandle,dummy_axeshandle2)
            colormap(RedBlueMap )
            ylim([0,0.7])
     

        axeshandle=subplot(2,3,6)
            swapfigures(axeshandle,dummy_axeshandle3)
            colormap(RedBlueMap )
            ylim([0,0.7])
     

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
            for iter =1:1:height_imageformat    
                 saveas(gca,[FigureFileName,'_Combi'],imageformat(iter,:))  
            end



