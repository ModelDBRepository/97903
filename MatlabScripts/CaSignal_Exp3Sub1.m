%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3Sub1.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable='FreeCalciumInShells'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


figure(3111);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        plot(D_Ca1(:,1), D_Ca1(:,2), 'b');
        plot(D_Ca2(:,1), D_Ca2(:,2), 'b');
        plot(D_Ca3(:,1), D_Ca3(:,2), 'b');
        plot(D_Ca4(:,1), D_Ca4(:,2), 'b');
        plot(D_Ca5(:,1), D_Ca5(:,2), 'b');
        plot(D_Ca6(:,1), D_Ca6(:,2), 'b');

    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,[FigureFileName,'_D'],imageformat)
    
    
figure(3112);
    clf
    hold on;       
    % Plot Calcium Traces from the Sphere/Spine
        plot(S_Ca1(:,1), S_Ca1(:,2), 'r');
        plot(S_Ca2(:,1), S_Ca2(:,2), 'r');
        plot(S_Ca3(:,1), S_Ca3(:,2), 'r');
        plot(S_Ca4(:,1), S_Ca4(:,2), 'r');
        plot(S_Ca5(:,1), S_Ca5(:,2), 'r');
        plot(S_Ca6(:,1), S_Ca6(:,2), 'r');
        

    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,[FigureFileName,'_S'],imageformat)
    
    
        
        
Observable='FreeCalciumAverage' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

    figure(312);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        D_CaAverageNorm=NormalizeSignal(D_CaAverage(:,2));
        plot(D_CaAverage(:,1),D_CaAverageNorm, 'b', 'LineWidth', 2);

    % Plot Calcium Traces from the Sphere/Spine
        S_CaAverageNorm=NormalizeSignal(S_CaAverage(:,2));
        plot(S_CaAverage(:,1),S_CaAverageNorm, 'r', 'LineWidth', 2);


    % Set the fontsize
        set(gca, 'FontSize', 20);


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
