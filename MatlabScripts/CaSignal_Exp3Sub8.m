%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3Sub8.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

Observable='CalciumInflux'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


figure(381)
    clf
    hold on;
    
    %Cylinder
        subplot(1,2,1, 'FontSize', 20)
        hold on;


        % Plot Calcium Influx
        plot(D_CalciumCurrent(:,1), D_CalciumCurrent(:,2),'b')
        
        % Set the area to be plotted
        xlim([0,120])
        ylim([0,6])
        
     %Sphere
        subplot(1,2,2, 'FontSize', 20)
        hold on;


        % Plot Calcium Influx   
        plot(S_CalciumCurrent(:,1), S_CalciumCurrent(:,2),'r')


    % Set the area to be plotted
        xlim([0,120])
        ylim([0,6])
        
   
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf or jpg
        saveas(gca,FigureFileName,imageformat)




