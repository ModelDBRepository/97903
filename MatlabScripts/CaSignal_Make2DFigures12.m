%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Make2DFigures12.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
 
   
    % ... and make the plots
    % Plot Rise Times
    figure(FirstFig*10+1)
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_RiseTimes_',Observable,'_',SecondVarName,'_Plot'];
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,FirstVarMeshParams,TauRiseMatrix','CDataMapping','scaled')
              
        % Add line separating spherical (up) and cylindrical (down )
        % simulations
        % Plot the contours      
        contour(SecondVarMesh(),FirstVarMesh(),TauRiseMatrix(),RiseLimits,RiseColor,  'LineWidth',LineWidth)
        
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
        % caxis([0 8])
        % caxis([2 4])
        caxis auto
        
        % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold', 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis( [SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMesh(1),FirstVarMesh(end)] )
        
        % Define the colormap and show it in the colorbar
        colormap('default')
        colorbar
        
              
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end
        
  
    
    % Plot Decay Times
    figure(SecondFig*10+1)
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_DecayTimes_',Observable,'_',SecondVarName,'_Plot'];
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,FirstVarMeshParams, TauDecayMatrix','CDataMapping','scaled')   
        contour(SecondVarMesh(),FirstVarMesh(),TauDecayMatrix(),DecayLimits,DecayColor,  'LineWidth',LineWidth) 
        
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
        caxis([0 400])
        
        % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])
        
        % Define the colormap and show it in the colorbar
        colormap('default')
        colorbar
        
        % Set the fontsize
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)

        
        % Set figure name    
        set(gcf,'name',Observable)  

        
        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end


%%
    % Plot Integrated Activation
    if(plotIntAct==1)
        figure(SecondFig*10+8)
            hold on;
            % Define a filename for saving
            FigureFileName=[Path,NameExperiment,Geometry,'_ActivationInt_',Observable,'_',SecondVarName,'_Plot'];

            %Put the data in the figure and ...
            image( SecondVarMeshParams,FirstVarMeshParams, DyeIntegratedMatrix','CDataMapping','scaled')   

            % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
            % needed to make this work.
            caxis([0,60])

            % Set the tickmarks
            set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold')
            set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

            % Set the area to be plotted
            axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])

            % Define the colormap and show it in the colorbar
            colormap('default')
            colorbar

            % Set the fontsize
            set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)


            % Set figure name    
            set(gcf,'name',Observable)  


            % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
            for iter =1:1:height_imageformat
                saveas(gca,FigureFileName,imageformat(iter,:))  
            end
    end
   
%%
    % Plot Maximum Activation
    if(plotMaxAct==1)
    figure(SecondFig*10+9)
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,Geometry,'_ActivationMax_',Observable,'_',SecondVarName,'_Plot'];
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,FirstVarMeshParams, DyeMaxMatrix','CDataMapping','scaled')   
       
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
        caxis([0,6])
        
        % Set the tickmarks
        set(gca,'ytick',[FirstVarMeshParams(1),FirstVarMeshParams(end-30),FirstVarMeshParams(end-20),FirstVarMeshParams(end-10),FirstVarMeshParams(end)],'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),FirstVarMeshParams(1),FirstVarMeshParams(end)])
        
        % Define the colormap and show it in the colorbar
        colormap('default')
        colorbar
        
        % Set the fontsize
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)

        
        % Set figure name    
        set(gcf,'name',Observable)  

        
        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end
    end
        
        
    
        
    
        
    
        
    
        
    
        
    
