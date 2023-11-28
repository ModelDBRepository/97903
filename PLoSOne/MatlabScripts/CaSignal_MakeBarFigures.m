%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_MakeBarFigures.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
 
         
    figure(SecondFig*10+5)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_OuterAverageInner_',Observable,'_',SecondVarName,'_Plot']
   
        subplot(1,2,1,'FontSize', 20,'FontWeight','bold',  'LineWidth',LineWidthXY)
        RiseDiffs=[TauRiseMatrixOuter(:),TauRiseMatrixCompare(:),TauRiseMatrixInner(:)];
        bar(RiseDiffs)
        
        
        subplot(1,2,2,'FontSize', 20,'FontWeight','bold',  'LineWidth',LineWidthXY)
        
        DecayDiffs=[TauDecayMatrixOuter(:),TauDecayMatrixCompare(:),TauDecayMatrixInner(:)];
        bar(DecayDiffs)
       
        %Set the fontsize
        set(gca, 'FontSize',FontSize)
        
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end
        
    
