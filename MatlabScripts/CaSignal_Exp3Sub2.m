%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3Sub2.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable='DyeInShells'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


figure(3211);
    clf
    hold on;

       
    % Plot Calcium Traces from the Cylinder/Dendrite
        plot(D_Dye1(:,1), DyeTotal-D_Dye1(:,2), 'b', 'LineWidth', 2)
        plot(D_Dye2(:,1), DyeTotal-D_Dye2(:,2), 'b', 'LineWidth', 2)
        plot(D_Dye3(:,1), DyeTotal-D_Dye3(:,2), 'b', 'LineWidth', 2)
        plot(D_Dye4(:,1), DyeTotal-D_Dye4(:,2), 'b', 'LineWidth', 2)
        plot(D_Dye5(:,1), DyeTotal-D_Dye5(:,2), 'b', 'LineWidth', 2)
        plot(D_Dye6(:,1), DyeTotal-D_Dye6(:,2), 'b', 'LineWidth', 2)
         
    % Set the area to be plotted
        axis([0,500,30,46])
        
    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,[FigureFileName,'_D'],imageformat)
    
    
        
figure(3212);
    clf
    hold on;

    % Plot Calcium Traces from the Sphere/Spine
        plot(S_Dye1(:,1), DyeTotal-S_Dye1(:,2), 'r', 'LineWidth', 2)
        plot(S_Dye2(:,1), DyeTotal-S_Dye2(:,2), 'r', 'LineWidth', 2)
        plot(S_Dye3(:,1), DyeTotal-S_Dye3(:,2), 'r', 'LineWidth', 2)
        plot(S_Dye4(:,1), DyeTotal-S_Dye4(:,2), 'r', 'LineWidth', 2)
        plot(S_Dye5(:,1), DyeTotal-S_Dye5(:,2), 'r', 'LineWidth', 2)
        plot(S_Dye6(:,1), DyeTotal-S_Dye6(:,2), 'r', 'LineWidth', 2)
     
    % Set the area to be plotted
        axis([0,500,30,46])
        
    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,[FigureFileName,'_S'],imageformat)
    
    
        
        
Observable='BoundDyeAverage' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

    figure(322);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        D_BoundDyeNorm=NormalizeSignal(DyeTotal-D_DyeAverage(:,2));
        plot(D_DyeAverage(:,1), D_BoundDyeNorm, 'b', 'LineWidth', 2)

    % Plot Calcium Traces from the Sphere/Spine
        S_BoundDyeNorm=NormalizeSignal(DyeTotal-S_DyeAverage(:,2));
        plot(S_DyeAverage(:,1), S_BoundDyeNorm, 'r', 'LineWidth', 2)

    % Set the area to be plotted
        axis([0,500,0,100])

    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
