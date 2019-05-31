%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_MakeContourFigures.m
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
        FigureFileName=[Path,NameExperiment,'_RiseTimeContour_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauRiseMatrix(:,9:40),[3.0,3.4],'r',  'LineWidth',LineWidth) %sphere
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauRiseMatrix(:,1:8),[3.0,3.4],'r',  'LineWidth',LineWidth)
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauRiseMatrix(:,1:8),[4.4,5.0],'b',  'LineWidth',LineWidth)
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauRiseMatrix(:,9:40),[4.4,5.0],'b',  'LineWidth',LineWidth)
        
        
        contour(SecondVarMesh,SigmaMesh,SigmaMesh,[4.2,4.2],SeparatorColor,  'LineWidth',SeparatorLineWidth)
        
        set(gca, 'FontSize',FontSize)
        
        % Set the tickmarks
        set(gca,'ytick',0:4:20,'FontWeight','bold',  'LineWidth',LineWidthXY)
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)])
        
        
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
        FigureFileName=[Path,NameExperiment,'_DecayTimeContour_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauDecayMatrix(:,9:40),[80,100],'r',  'LineWidth',LineWidth) %sphere
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauDecayMatrix(:,9:40),[190,210],'b',  'LineWidth',LineWidth) %sphere 
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauDecayMatrix(:,1:8),[80,100],'r',  'LineWidth',LineWidth)
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauDecayMatrix(:,1:8),[190,210],'b',  'LineWidth',LineWidth)
        
        
        contour(SecondVarMesh,SigmaMesh,SigmaMesh,[4.2,4.2],SeparatorColor,  'LineWidth',SeparatorLineWidth)
        contour(SecondVarMesh(:,:),SigmaMesh(:,:),SigmaMesh(:,:),[6.4,6.5],'r',  'LineWidth',LineWidth)
        contour(SecondVarMesh(:,:),SigmaMesh(:,:),SigmaMesh(:,:),[2.9,3.8],'b',  'LineWidth',LineWidth)
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        
        % Set the tickmarks
        set(gca,'ytick',0:4:20,'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)])
        
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
            saveas(gca,FigureFileName,imageformat(iter,:))  
        end
        
%%       
    
    
%     figure(SecondFig*10+4)
%         clf
%         hold on;
%         % Define a filename for saving
%         FigureFileName=[Path,NameExperiment,'_CombinedContours_',Observable,'_',SecondVarName,'_Plot']
%    
%         % Plot the contours
%         contour(SecondVarMesh,SigmaMesh,TauRiseMatrix,[3.0,3.4],'r') %sphere
%         contour(SecondVarMesh,SigmaMesh,TauRiseMatrix,[4.4,5.0],'b')
%         contour(SecondVarMesh,SigmaMesh,TauDecayMatrix,[80,100],'r') %sphere
%         contour(SecondVarMesh,SigmaMesh,TauDecayMatrix,[190,210],'b')
%     
%         contour(SecondVarMesh,SigmaMesh,SigmaMesh,[4.2,4.2],'k')
%         
%         % Set the tickmarks
%         set(gca,'ytick',[0:4:20])
%         
%         set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),,SecondVarMeshParams(end)])
% 
%         % Set the area to be plotted
%         axis([SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)])
%         
%         % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
%         saveas(gca,FigureFileName,imageformat)
    
    figure(SecondFig*10+3)
        clf
        hold on;
        % Define a filename for saving
        FigureFileName=[Path,NameExperiment,'_CombinedContours_',Observable,'_',SecondVarName,'_Plot'];
   
        % Plot the contours
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauRiseMatrix(:,9:40),[3.0,3.4],'r',  'LineWidth',LineWidth) %sphere
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauRiseMatrix(:,1:8),[4.4,5.0],'b',  'LineWidth',LineWidth)
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauDecayMatrix(:,9:40),[80,100],'r',  'LineWidth',LineWidth) %sphere
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauDecayMatrix(:,1:8),[190,210],'b',  'LineWidth',LineWidth)
    
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauRiseMatrix(:,1:8),[3.0,3.4],'r',  'LineWidth',LineWidth) %sphere
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauRiseMatrix(:,9:40),[4.4,5.0],'b',  'LineWidth',LineWidth)
        contour(SecondVarMesh(:,1:8),SigmaMesh(:,1:8),TauDecayMatrix(:,1:8),[80,100],'r',  'LineWidth',LineWidth)%sphere
        contour(SecondVarMesh(:,9:40),SigmaMesh(:,9:40),TauDecayMatrix(:,9:40),[190,210],'b',  'LineWidth',LineWidth)
        
        contour(SecondVarMesh,SigmaMesh,SigmaMesh,[4.2,4.2],SeparatorColor,  'LineWidth',SeparatorLineWidth)
          
        %Set the fontsize
        set(gca, 'FontSize',FontSize,  'LineWidth',LineWidthXY)
        
        % Set the tickmarks
        set(gca,'ytick',0:4:20,'FontWeight','bold')
        set(gca,'xtick',[SecondVarMeshParams(1),SecondVarMeshParams(end-30),SecondVarMeshParams(end-20),SecondVarMeshParams(end-10),SecondVarMeshParams(end)],'FontWeight','bold')

        % Set the area to be plotted
        axis([SecondVarMeshParams(1),SecondVarMeshParams(end),SigmaMeshParams(1),SigmaMeshParams(end)])
        
        % Set figure name    
        set(gcf,'name',Observable)  

        % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        for iter =1:1:height_imageformat
        
         saveas(gca,FigureFileName,imageformat(iter,:))  
        end
        
        
      
