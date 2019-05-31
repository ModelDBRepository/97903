%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: MakeFigures.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
% MakeFigures
    % Meshing things up ...
    [SigmaMesh,SecondVarMesh] = meshgrid(SigmaMeshParams, SecondVarMeshParams)

    % ... and make the plots
    % Plot Rise Times
    figure(FirstFig*10+1)
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,'_RiseTimes_',Observable,'_',SecondVarName,'_Plot']
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,SigmaMeshParams, TauRiseMatrix','CDataMapping','scaled')
        
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
        caxis([0 8])
        
        % Set the tickmarks
        set(gca,'ytick',[0:4:20])
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-20),SecondVarMeshParams(end)])

        % Set the area to be plotted
        axis( [SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)] )
        
        % Define the colormap and show it in the colorbar
        colormap('default')
        colorbar
        
        % Set the fontsize
        set(gca, 'FontSize', 20)

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,'fig')
        saveas(gca,FigureFileName,'pdf')
        saveas(gca,FigureFileName,'jpg')
    
    
    
    % Plot Decay Times
    figure(SecondFig*10+1)
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,'_DecayTimes_',Observable,'_',SecondVarName,'_Plot']
            
        %Put the data in the figure and ...
        image( SecondVarMeshParams,SigmaMeshParams, TauDecayMatrix','CDataMapping','scaled')
        
        % ... set the range of values which are coded for in the map (the 'CDataMapping','scaled' property is
        % needed to make this work.
         caxis([0 400])
        
        % Set the tickmarks
        set(gca,'ytick',[0:4:20])
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-20),SecondVarMeshParams(end)])

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)])
        
        % Define the colormap and show it in the colorbar
        colormap('default')
        colorbar
        
        % Set the fontsize
        set(gca, 'FontSize', 20)

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,'fig')
        saveas(gca,FigureFileName,'pdf')
        saveas(gca,FigureFileName,'jpg')
    
        
    % Plot Contour Figures
    figure(FirstFig*10+2)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,'_RiseTimeContour_',Observable,'_',SecondVarName,'_Plot']
   
        % Plot the contours
        contour(SecondVarMesh(:,[9:40]),SigmaMesh(:,[9:40]),TauRiseMatrix(:,[9:40]),[3.0,3.4],'r') %sphere
        contour(SecondVarMesh(:,[1:8]),SigmaMesh(:,[1:8]),TauRiseMatrix(:,[1:8]),[4.4,5.0],'b')
        set(gca, 'FontSize', 20)
        
        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,'fig')
        saveas(gca,FigureFileName,'pdf')
        saveas(gca,FigureFileName,'jpg')
        
        
    
    
    figure(SecondFig*10+2)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,'_DecayTimeContour_',Observable,'_',SecondVarName,'_Plot']
   
        % Plot the contours
        contour(SecondVarMesh(:,[9:40]),SigmaMesh(:,[9:40]),TauDecayMatrix(:,[9:40]),[80,100],'r') %sphere
        contour(SecondVarMesh(:,[1:8]),SigmaMesh(:,[1:8]),TauDecayMatrix(:,[1:8]),[190,210],'b')
        set(gca, 'FontSize', 20)
        
        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,'fig')
        saveas(gca,FigureFileName,'pdf')
        saveas(gca,FigureFileName,'jpg')
        
    figure(SecondFig*10+3)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,'_CombinedContours_',Observable,'_',SecondVarName,'_Plot']
   
        % Plot the contours
        contour(SecondVarMesh(:,[9:40]),SigmaMesh(:,[9:40]),TauRiseMatrix(:,[9:40]),[3.0,3.4],'r') %sphere
        contour(SecondVarMesh(:,[1:8]),SigmaMesh(:,[1:8]),TauRiseMatrix(:,[1:8]),[4.4,5.0],'b')
        contour(SecondVarMesh(:,[9:40]),SigmaMesh(:,[9:40]),TauDecayMatrix(:,[9:40]),[80,100],'r') %sphere
        contour(SecondVarMesh(:,[1:8]),SigmaMesh(:,[1:8]),TauDecayMatrix(:,[1:8]),[190,210],'b')
    
    
    
    
    
    
