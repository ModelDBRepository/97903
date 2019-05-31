%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Make2DFigures.m
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
        FigureFileName=[Path,NameExperiment,'_RiseTimes_',Observable,'_',SecondVarName,'_Plot'];
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,SigmaMeshParams, TauRiseMatrix','CDataMapping','scaled')
        
        % Add line separating spherical (up) and cylindrical (down )
        % simulations
        contour(SecondVarMesh(),SigmaMesh(),SigmaMesh,[4.2,4.2],SeparatorColor, 'LineWidth',SeparatorLineWidth)
        
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
        % caxis([0 8])
        caxis([2 4])
        
        % Set the tickmarks
        set(gca,'ytick',0:4:20,'FontWeight','bold', 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis( [SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)] )
        
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
        FigureFileName=[Path,NameExperiment,'_DecayTimes_',Observable,'_',SecondVarName,'_Plot'];
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,SigmaMeshParams, TauDecayMatrix','CDataMapping','scaled')
        
        % Add line separating spherical (up) and cylindrical (down )
        % simulations
        contour(SecondVarMesh(),SigmaMesh(),SigmaMesh,[4.2,4.2],SeparatorColor,  'LineWidth',SeparatorLineWidth)
        
%         DecayTimes1CSteadyStModel=256./(SigmaMesh.*SecondVarMesh)
%         contour(SecondVarMesh(),SigmaMesh(),DecayTimes1CSteadyStModel,[200,200],'w--',  'LineWidth',SeparatorLineWidth)
%         contour(SecondVarMesh(),SigmaMesh(),DecayTimes1CSteadyStModel,[90,90],'y--',  'LineWidth',SeparatorLineWidth)
%         contour(SecondVarMesh(),SigmaMesh(),TauDecayMatrix,[200,200],'w',  'LineWidth',SeparatorLineWidth)
%         contour(SecondVarMesh(),SigmaMesh(),TauDecayMatrix,[90,90],'y',  'LineWidth',SeparatorLineWidth)
%         
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
         caxis([0 400])
        
        % Set the tickmarks
        set(gca,'ytick',0:4:20,'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)])
        
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
        
        
    
        
    
