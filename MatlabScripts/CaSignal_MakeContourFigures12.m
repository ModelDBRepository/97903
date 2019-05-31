%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_MakeContourFigures12.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

    % Plot Contour Figures
    figure(FirstFig*10+2)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_RiseTimeContour_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours
        contour(SecondVarMesh(),FirstVarMesh(),TauRiseMatrix(),RiseLimits,RiseColor,  'LineWidth',LineWidth)         
        set(gca, 'FontSize',FontSize)
        
        % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold',  'LineWidth',LineWidthXY)
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])
        
        
        % Set figure name    
        set(gcf,'name',Observable)  

        
        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end
        
        
        
%%   
    figure(SecondFig*10+2)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_DecayTimeContour_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours
        contour(SecondVarMesh(),FirstVarMesh(),TauDecayMatrix(),DecayLimits,DecayColor,  'LineWidth',LineWidth) 
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        
        % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])
        
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end
        
%%       
 
    
    figure(SecondFig*10+3)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_CombinedContours_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours      
        contour(SecondVarMesh(),FirstVarMesh(),TauRiseMatrix(),RiseLimits,RiseColor,  'LineWidth',LineWidth)    
        contour(SecondVarMesh(),FirstVarMesh(),TauDecayMatrix(),DecayLimits,DecayColor,  'LineWidth',LineWidth) 
          
        %Set the fontsize
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        
       % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])
        
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
        
         saveas(gca,FigureFileName,imageformat(iter,:))  
        end
%%
        figure(SecondFig*10+4)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_CombinedContours_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours      
        contour(SecondVarMesh(),FirstVarMesh(),TauRiseMatrix(),RiseLimits,RiseColor,  'LineWidth',LineWidth)    
        contour(SecondVarMesh(),FirstVarMesh(),TauDecayMatrix(),DecayLimits,DecayColor,  'LineWidth',LineWidth) 
          
        %Set the fontsize
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        
       % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])
        
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
         saveas(gca,FigureFileName,imageformat(iter,:))  
        end
      
