%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp7C.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable='BoundDyeStepsAfterSpikeTrains'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_PeakNo_Plot']
DataFileName1=[Path,NameExperiment,Observable,'_UpSteps']
DataFileName2=[Path,NameExperiment,Observable,'_DownSteps']

% get the number of fileformats to which we want to save
[height_imageformat,width_imageformat]=size(imageformat);

BlueRedMap= [ 0 0 1
              1 0 0 ]

RedBlueMap= [ 1 0 0
              0 0 1]
figure(731);
 
    clf 
    hold on;
    
    %Disc
        [D_IndicesMinima, D_IndicesMaxima] = FindIndicesExtrema(DyeTotal-D_DyeAverage(:,2));
        D_Minima=DyeTotal-D_DyeAverage(D_IndicesMinima,2);
        D_Maxima=DyeTotal-D_DyeAverage(D_IndicesMaxima,2);

        %Calculate Stepsizes
        D_UpDif=D_Maxima(1:5)-D_Minima(1:5)
        D_DownDif=D_Maxima(1:4)-D_Minima(2:5)
        D_MaxDif=max(D_Maxima)-min(D_Minima);
    %Sphere
        [S_IndicesMinima, S_IndicesMaxima] = FindIndicesExtrema(DyeTotal-S_DyeAverage(:,2));
        S_Minima=DyeTotal-S_DyeAverage(S_IndicesMinima,2);
        S_Maxima=DyeTotal-S_DyeAverage(S_IndicesMaxima,2);

        %Calculate UpStepsizes
        S_UpDif=S_Maxima(1:5)-S_Minima(1:5);
        S_DownDif=S_Maxima(1:4)-S_Minima(2:5);
        S_MaxDif=max(S_Maxima)-min(S_Minima);
    % Plot Stepsizes
        subplot(1,2,1,'FontSize', 20)
        Ups=[S_UpDif./S_MaxDif,D_UpDif./D_MaxDif]
        bar(Ups)
        save(DataFileName1,'Ups','-ascii','-tabs')
        colormap(RedBlueMap )
        title 'Up'
        xlim([0 6])
        
        subplot(1,2,2,'FontSize', 20)
        Downs=[S_DownDif./S_MaxDif,D_DownDif./D_MaxDif]
        bar(Downs)  
        save(DataFileName2,'Downs','-ascii','-tabs')
        colormap(RedBlueMap )
        title 'Down'
        xlim([0 5])
    
    % Set figure name    
        set(gcf,'name',Observable)  

    
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
      
    
    
Observable='BoundDyeMaxMinAfterSpikeTrains' 

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_PeakNo_Plot']

figure(732);
clf 
hold on;
    plot(D_Maxima,'b-+')
    plot(S_Maxima,'r-+')
    plot(D_Minima,'b-o')
    plot(S_Minima,'r-o')


    % Set the area to be plotted
    %    axis([0,500,30,46])

    % Set the fontsize
        set(gca, 'FontSize', 20)
        
 
    % Set figure name    
        set(gcf,'name',Observable)  

   % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
        
Observable='FreeCalciumStepsAfterSpikeTrains'        
 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_PeakNo_Plot']

figure(733);
    clf 
    hold on;
    
    
    
    %Disc
        [D_IndicesMinima, D_IndicesMaxima] = FindIndicesExtrema(D_CaAverage(:,2));
        D_Minima=D_CaAverage(D_IndicesMinima,2);
        D_Maxima=D_CaAverage(D_IndicesMaxima,2);

        %Calculate Stepsizes
        D_UpDif=D_Maxima(1:5)-D_Minima(1:5)
        D_DownDif=D_Maxima(1:4)-D_Minima(2:5)

    %Sphere
        [S_IndicesMinima, S_IndicesMaxima] = FindIndicesExtrema(S_CaAverage(:,2));
        S_Minima=S_CaAverage(S_IndicesMinima,2);
        S_Maxima=S_CaAverage(S_IndicesMaxima,2);

        %Calculate UpStepsizes
        S_UpDif=S_Maxima(1:5)-S_Minima(1:5);
        S_DownDif=S_Maxima(1:4)-S_Minima(2:5)
        
    % Plot Stepsizes
        subplot(1,2,1,'FontSize', 20)
        bar([S_UpDif,D_UpDif])            
        colormap(RedBlueMap )
        title 'Up'
        xlim([0 6])
        
        subplot(1,2,2,'FontSize', 20)
        bar([S_DownDif,D_DownDif])            
        colormap(RedBlueMap )
        title 'Down'
        xlim([0 5])
        
   
    % Set figure name    
        set(gcf,'name',Observable)  
        
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
Observable='FreeCalciumMaxMinAfterSpikeTrains' 

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_PeakNo_Plot']

figure(734);
clf 
hold on;
    plot(D_Maxima,'b-+')
    plot(S_Maxima,'r-+')
    plot(D_Minima,'b-o')
    plot(S_Minima,'r-o')



 
    % Set figure name    
        set(gcf,'name',Observable)  
           
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat    
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
