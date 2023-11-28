%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp8A2.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable='FreeCalciumAverageNotNorm' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

% get the number of fileformats to which we want to save
[height_imageformat,width_imageformat]=size(imageformat);

figure(figureno1);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        plot(D_CaAverage(:,1),D_CaAverage(:,2), 'b', 'LineWidth', 2);

    % Plot Calcium Traces from the Sphere/Spine
        plot(S_CaAverage(:,1),S_CaAverage(:,2), 'r', 'LineWidth', 2);
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat
        
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
        
Observable='FreeCalciumAverageRisePhaseNN' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

    figure(figureno2);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        plot(D_CaAverage(:,1),D_CaAverage(:,2), 'b', 'LineWidth', 2);

    % Plot Calcium Traces from the Sphere/Spine
        plot(S_CaAverage(:,1),S_CaAverage(:,2), 'r', 'LineWidth', 2);

     
    % Set the area to be plotted
        axis([0,120,0,1])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in
    % formats fig,pdf,jpg
    
    for iter =1:1:height_imageformat
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
Observable='DyeAverageRisePhaseNN' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

    figure(figureno3);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        plot(D_DyeAverage(:,1),10-D_DyeAverage(:,2), 'b', 'LineWidth', 2);

    % Plot Calcium Traces from the Sphere/Spine
        plot(S_DyeAverage(:,1),10-S_DyeAverage(:,2), 'r', 'LineWidth', 2);

     
    % Set the area to be plotted
        %axis([0,120,0,1])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in
    % formats fig,pdf,jpg
    
    for iter =1:1:height_imageformat
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
