%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp8G.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable1='FreeCalciumAverageRiseTime' 
Observable2='Ca'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable1,'_Time_Plot']

% get the number of fileformats to which we want to save
[height_imageformat,width_imageformat]=size(imageformat);

figure(figureno1);
    clf
    hold on;
    
    for SecondVar=0:40:200
        % Compile the filename ...
        DataFileName=[NameExperiment,'S_',Observable2,'Average_',num2str(SecondVar)];
        % ... , load the data from the file ...
        TimeSeries=load(DataFileName);
        % .. and plot
        plot(TimeSeries(:,1),TimeSeries(:,2),'r', 'LineWidth', 1.5)
        Risetime1090=Calculate10To90Risetime(TimeSeries(:,1), TimeSeries(:,2))
        TotalDye=SecondVar
    end
    
    % Set the area to be plotted
        axis([0,50,0,0.8])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable1)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
% Define a filename for saving
Observable1='BoundaryFreeCalcium' 
Observable2='Ca'
FigureFileName=[Path,NameExperiment,Observable1,'_Time_Plot']

figure(figureno2);
    clf
    hold on;
    
    for SecondVar=0:40:200
        % Compile the filename ...
        DataFileName=[NameExperiment,'S_',Observable2,'Boundary_',num2str(SecondVar)];
        % ... , load the data from the file ...
        TimeSeries=load(DataFileName);
        % .. and plot
        plot(TimeSeries(:,1),TimeSeries(:,2),'r', 'LineWidth',SecondVar/80+1)% 1.5)
        Risetime1090=Calculate10To90Risetime(TimeSeries(:,1), TimeSeries(:,2))
        TotalDye=SecondVar
    end
    
    % Set the area to be plotted
        axis([0,50,0,1])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable1)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
% Define a filename for saving
Observable1='BoundaryBoundCalcium' 
Observable2='Ca'
FigureFileName=[Path,NameExperiment,Observable1,'_Time_Plot']

figure(figureno3);
    clf
    hold on;
    
    for SecondVar=0:40:200
        % Compile the filename ...
        DataFileName=[NameExperiment,'S_BndDye1_',num2str(SecondVar)];
        % ... , load the data from the file ...
        TimeSeries=load(DataFileName);
        % .. and plot
        plot(TimeSeries(:,1),TimeSeries(:,2),'r', 'LineWidth',SecondVar/80+1)% 1.5)
        Risetime1090=Calculate10To90Risetime(TimeSeries(:,1), TimeSeries(:,2))
        TotalDye=SecondVar
    end
    
    % Set the area to be plotted
        axis auto %([0,50,0,1])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable1)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
