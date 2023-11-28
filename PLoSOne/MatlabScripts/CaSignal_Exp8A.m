%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp8A.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable='FreeCalciumAverage' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

% get the number of fileformats to which we want to save
[height_imageformat,width_imageformat]=size(imageformat);

figure(figureno1);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        D_CaAverageNorm=NormalizeSignal(D_CaAverage(:,2));
        plot(D_CaAverage(:,1),D_CaAverageNorm, 'b', 'LineWidth', 2);

    % Plot Calcium Traces from the Sphere/Spine
        S_CaAverageNorm=NormalizeSignal(S_CaAverage(:,2));
        plot(S_CaAverage(:,1),S_CaAverageNorm, 'r', 'LineWidth', 2);

     
    % Set the area to be plotted
        axis([0,500,0,100])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat
        
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
        
Observable='FreeCalciumAverageRisePhase' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

    figure(figureno2);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        D_CaAverageNorm=NormalizeSignal(D_CaAverage(:,2));
        plot(D_CaAverage(:,1),D_CaAverageNorm, 'b', 'LineWidth', 2);

    % Plot Calcium Traces from the Sphere/Spine
        S_CaAverageNorm=NormalizeSignal(S_CaAverage(:,2));
        plot(S_CaAverage(:,1),S_CaAverageNorm, 'r', 'LineWidth', 2);

     
    % Set the area to be plotted
        axis([0,120,0,100])
        
    % Set the fontsize
        set(gca, 'FontSize', 20);

    % Set figure name    
        set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in
    % formats fig,pdf,jpg
    
    for iter =1:1:height_imageformat
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
        
        
Observable='FreeCalciumInShellsRisePhase'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


figure(figureno3);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
        plot(D_Ca1(:,1), D_Ca1(:,2), 'r');
        plot(D_Ca2(:,1), D_Ca2(:,2), 'm');
        plot(D_Ca3(:,1), D_Ca3(:,2), 'c');
        plot(D_Ca4(:,1), D_Ca4(:,2), 'b');
        plot(D_Ca5(:,1), D_Ca5(:,2), 'g');
        plot(D_Ca6(:,1), D_Ca6(:,2), 'y');
       
    % Plot Calcium Traces from the Sphere/Spine
        plot(S_Ca1(:,1), S_Ca1(:,2), 'r--');
        plot(S_Ca2(:,1), S_Ca2(:,2), 'm--');
        plot(S_Ca3(:,1), S_Ca3(:,2), 'c--');
        plot(S_Ca4(:,1), S_Ca4(:,2), 'b--');
        plot(S_Ca5(:,1), S_Ca5(:,2), 'g--');
        plot(S_Ca6(:,1), S_Ca6(:,2), 'y--');
        
 
    % Set the area to be plotted
        axis([0,120,0,1.6])
   
    % Set the fontsize
        set(gca, 'FontSize', 20)
 
    % Set figure name    
        set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end
    
Observable='FreeCalciumInShellsRisePhaseSeparated'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


figure(figureno4);
    clf
    hold on;
    
    
    % Plot Calcium Traces from the Cylinder/Dendrite
    subplot(2,1,1)
    hold on
        plot(D_Ca1(:,1), D_Ca1(:,2), 'b');
        plot(D_Ca2(:,1), D_Ca2(:,2), 'b');
        plot(D_Ca3(:,1), D_Ca3(:,2), 'b');
        plot(D_Ca4(:,1), D_Ca4(:,2), 'b');
        plot(D_Ca5(:,1), D_Ca5(:,2), 'b');
        plot(D_Ca6(:,1), D_Ca6(:,2), 'b');
        % Set the area to be plotted
        axis([0,120,0,1.6])
   
        % Set the fontsize
%             set(gca, 'FontSize', 20)

        % Set figure name    
            set(gcf,'name',Observable)  

    % Plot Calcium Traces from the Sphere/Spine
     subplot(2,1,2)
    hold on
        plot(S_Ca1(:,1), S_Ca1(:,2), 'r');
        plot(S_Ca2(:,1), S_Ca2(:,2), 'r');
        plot(S_Ca3(:,1), S_Ca3(:,2), 'r');
        plot(S_Ca4(:,1), S_Ca4(:,2), 'r');
        plot(S_Ca5(:,1), S_Ca5(:,2), 'r');
        plot(S_Ca6(:,1), S_Ca6(:,2), 'r');
        
 
        % Set the area to be plotted
            axis([0,120,0,1.6])

        % Set the fontsize
%             set(gca, 'FontSize', 20)

        % Set figure name    
            set(gcf,'name',Observable)  

    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
    for iter =1:1:height_imageformat
         saveas(gca,FigureFileName,imageformat(iter,:))  
    end    
    
    CaTotal=0.08
Calculate10To90Risetime(D_CaAverage(:,1), D_CaAverage(:,2)-CaTotal)
ND_CaAverage=NormalizeSignal(D_CaAverage(:,2)-CaTotal);
NS_CaAverage=NormalizeSignal(S_CaAverage(:,2)-CaTotal);
[mya,tdecay_dendrite,myc]=FitExponentialDecayTimes(20, 100, D_CaAverage(:,1),ND_CaAverage,0)
[mya,tdecay_spine,myc]=FitExponentialDecayTimes(20, 100, S_CaAverage(:,1),NS_CaAverage,0)
trisespine   =Calculate10To90Risetime(S_CaAverage(:,1), S_CaAverage(:,2)-CaTotal)
trisedendrite= Calculate10To90Risetime(D_CaAverage(:,1), D_CaAverage(:,2)-CaTotal)
