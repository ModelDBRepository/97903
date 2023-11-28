%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3Sub4.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------



% Define begin and end of the fitting interval
tb=50;
te=500;


% Calculate the rise times
    %Cylinder
        [D_tau1, D_tb1] = Calculate10To90Risetime(D_Dye1(:,1), DyeTotal-D_Dye1(:,2))
        [D_tau2, D_tb2] = Calculate10To90Risetime(D_Dye2(:,1), DyeTotal-D_Dye2(:,2))
        [D_tau3, D_tb3] = Calculate10To90Risetime(D_Dye3(:,1), DyeTotal-D_Dye3(:,2))
        [D_tau4, D_tb4] = Calculate10To90Risetime(D_Dye4(:,1), DyeTotal-D_Dye4(:,2))
        [D_tau5, D_tb5] = Calculate10To90Risetime(D_Dye5(:,1), DyeTotal-D_Dye5(:,2))
        [D_tau6, D_tb6] = Calculate10To90Risetime(D_Dye6(:,1), DyeTotal-D_Dye6(:,2))
        [D_tauAverage, D_tbAverage] = Calculate10To90Risetime(D_DyeAverage(:,1), DyeTotal-D_DyeAverage(:,2))

    %Sphere
        [S_tau1, S_tb1] = Calculate10To90Risetime(S_Dye1(:,1), DyeTotal-S_Dye1(:,2))
        [S_tau2, S_tb2] = Calculate10To90Risetime(S_Dye2(:,1), DyeTotal-S_Dye2(:,2))
        [S_tau3, S_tb3] = Calculate10To90Risetime(S_Dye3(:,1), DyeTotal-S_Dye3(:,2))
        [S_tau4, S_tb4] = Calculate10To90Risetime(S_Dye4(:,1), DyeTotal-S_Dye4(:,2))
        [S_tau5, S_tb5] = Calculate10To90Risetime(S_Dye5(:,1), DyeTotal-S_Dye5(:,2))
        [S_tau6, S_tb6] = Calculate10To90Risetime(S_Dye6(:,1), DyeTotal-S_Dye6(:,2))
        [S_tauAverage, S_tbAverage] = Calculate10To90Risetime(S_DyeAverage(:,1), DyeTotal-S_DyeAverage(:,2))
        
%Calculate the normailed dye signals
    %Cylinder
        D_ND1=NormalizeSignal(DyeTotal-D_Dye1(:,2));
        D_ND2=NormalizeSignal(DyeTotal-D_Dye2(:,2));
        D_ND3=NormalizeSignal(DyeTotal-D_Dye3(:,2));
        D_ND4=NormalizeSignal(DyeTotal-D_Dye4(:,2));
        D_ND5=NormalizeSignal(DyeTotal-D_Dye5(:,2));
        D_ND6=NormalizeSignal(DyeTotal-D_Dye6(:,2));
        D_NDAverage=NormalizeSignal(DyeTotal-D_DyeAverage(:,2));
    
    %Sphere     
        S_ND1=NormalizeSignal(DyeTotal-S_Dye1(:,2));
        S_ND2=NormalizeSignal(DyeTotal-S_Dye2(:,2));
        S_ND3=NormalizeSignal(DyeTotal-S_Dye3(:,2));
        S_ND4=NormalizeSignal(DyeTotal-S_Dye4(:,2));
        S_ND5=NormalizeSignal(DyeTotal-S_Dye5(:,2));
        S_ND6=NormalizeSignal(DyeTotal-S_Dye6(:,2));
        S_NDAverage=NormalizeSignal(DyeTotal-S_DyeAverage(:,2));


Observable='DyeInShellsRiseAndDecay'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']
        
figure(341);
    clf
    hold on;
    % Plot Normalized BoundDye Traces from the Cylinder/Dendrite ...
        plot(D_Dye1(:,1),D_ND1, 'g', 'LineWidth', 2)
        plot(D_Dye2(:,1),D_ND2, 'g', 'LineWidth', 2)
        plot(D_Dye3(:,1),D_ND3, 'g', 'LineWidth', 2)
        plot(D_Dye4(:,1),D_ND4, 'g', 'LineWidth', 2)
        plot(D_Dye5(:,1),D_ND5, 'g', 'LineWidth', 2)
        plot(D_Dye6(:,1),D_ND6, 'g', 'LineWidth', 2)

    % and indicate the 10 and 90 percent points 
        plot([D_tb1 D_tb1+D_tau1], [10 90], 'go', 'LineWidth', 2)
        plot([D_tb2 D_tb2+D_tau2], [10 90], 'go', 'LineWidth', 2)
        plot([D_tb3 D_tb3+D_tau3], [10 90], 'go', 'LineWidth', 2)
        plot([D_tb4 D_tb4+D_tau4], [10 90], 'go', 'LineWidth', 2)
        plot([D_tb5 D_tb5+D_tau5], [10 90], 'go', 'LineWidth', 2)
        plot([D_tb6 D_tb6+D_tau6], [10 90], 'go', 'LineWidth', 2)


    % Plot Normalized BoundDye Traces from the Sphere/Spine ...
        plot(S_Dye1(:,1),S_ND1, 'm', 'LineWidth', 2)
        plot(S_Dye2(:,1),S_ND2, 'm', 'LineWidth', 2)
        plot(S_Dye3(:,1),S_ND3, 'm', 'LineWidth', 2)
        plot(S_Dye4(:,1),S_ND4, 'm', 'LineWidth', 2)
        plot(S_Dye5(:,1),S_ND5, 'm', 'LineWidth', 2)
        plot(S_Dye6(:,1),S_ND6, 'm', 'LineWidth', 2)

    % and indicate the 10 and 90 percent points 
        plot([S_tb1 S_tb1+S_tau1], [10 90], 'mo', 'LineWidth', 2)
        plot([S_tb2 S_tb2+S_tau2], [10 90], 'mo', 'LineWidth', 2)
        plot([S_tb3 S_tb3+S_tau3], [10 90], 'mo', 'LineWidth', 2)
        plot([S_tb4 S_tb4+S_tau4], [10 90], 'mo', 'LineWidth', 2)
        plot([S_tb5 S_tb5+S_tau5], [10 90], 'mo', 'LineWidth', 2)
        plot([S_tb6 S_tb6+S_tau6], [10 90], 'mo', 'LineWidth', 2)
   
    %Calculate the decay times and show the fit
    %Cylinder
        [D_a1, D_tau_d1, D_E1] = FitExponentialDecayTimes(tb, te, D_Dye1(:,1),D_ND1,1);
        [D_a2, D_tau_d2, D_E2] = FitExponentialDecayTimes(tb, te, D_Dye2(:,1),D_ND2,1);
        [D_a3, D_tau_d3, D_E3] = FitExponentialDecayTimes(tb, te, D_Dye3(:,1),D_ND3,1);
        [D_a4, D_tau_d4, D_E4] = FitExponentialDecayTimes(tb, te, D_Dye4(:,1),D_ND4,1);
        [D_a5, D_tau_d5, D_E5] = FitExponentialDecayTimes(tb, te, D_Dye5(:,1),D_ND5,1);
        [D_a6, D_tau_d6, D_E6] = FitExponentialDecayTimes(tb, te, D_Dye6(:,1),D_ND6,1);
        
    %Sphere
        [S_a1, S_tau_d1, S_E1] = FitExponentialDecayTimes(tb, te, S_Dye1(:,1),S_ND1,1);
        [S_a2, S_tau_d2, S_E2] = FitExponentialDecayTimes(tb, te, S_Dye2(:,1),S_ND2,1);
        [S_a3, S_tau_d3, S_E3] = FitExponentialDecayTimes(tb, te, S_Dye3(:,1),S_ND3,1);
        [S_a4, S_tau_d4, S_E4] = FitExponentialDecayTimes(tb, te, S_Dye4(:,1),S_ND4,1);
        [S_a5, S_tau_d5, S_E5] = FitExponentialDecayTimes(tb, te, S_Dye5(:,1),S_ND5,1);
        [S_a6, S_tau_d6, S_E6] = FitExponentialDecayTimes(tb, te, S_Dye6(:,1),S_ND6,1);
        
    % Set the area to be plotted
        axis([0,500,0,100])
        
    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
    
    
        
        
Observable='BoundDyeAverageRiseAndDecay' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

    figure(342);
    clf
    hold on;
    
    
     % Plot Normalized BoundDye Traces from the Cylinder/Dendrite ...
        plot(D_DyeAverage(:,1),D_NDAverage, 'b', 'LineWidth', 2)

    % and indicate the 10 and 90 percent points 
        plot([D_tbAverage D_tbAverage+D_tauAverage], [10 90], 'bo')


    % Plot Normalized BoundDye Traces from the Sphere/Spine ...
        plot(S_DyeAverage(:,1),S_NDAverage, 'r', 'LineWidth', 2)

    % and indicate the 10 and 90 percent points
        plot([S_tbAverage S_tbAverage+S_tauAverage], [10 90], 'ro')  
   
    %Calculate the decay times and show the fit
    %Cylinder
        [D_aAverage, D_tau_dAverage, D_EAverage] = FitExponentialDecayTimes(tb, te, D_DyeAverage(:,1),D_NDAverage,1);
        
    %Sphere
        [S_aAverage, S_tau_dAverage, S_EAverage] = FitExponentialDecayTimes(tb, te, S_DyeAverage(:,1),S_NDAverage,1);
        

    % Set the area to be plotted
        axis([0,500,0,100])

    % Set the fontsize
        set(gca, 'FontSize', 20)


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
        

Observable='BoundDyeShellsRiseAndDecay2' 
% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

DataFileName1=[Path,NameExperiment,Observable,'RiseSphere']
DataFileName2=[Path,NameExperiment,Observable,'DecaySphere']
DataFileName3=[Path,NameExperiment,Observable,'RiseDisc']
DataFileName4=[Path,NameExperiment,Observable,'DecayDisc']

    figure(343);
    clf
    hold on;
    
    % Overview of Risetimes
        %Cylinder
            subplot(2,2,1, 'FontSize', 20)
            hold on;
            RiseDisc=[D_tau1 D_tau2 D_tau3 D_tau4 D_tau5 D_tau6];
            save(DataFileName3,'RiseDisc','-ascii','-tabs')
            plot([1:6],RiseDisc , 'b-*');
            ylim([0 6])
    
        %Sphere
            subplot(2,2,3, 'FontSize', 20)
            hold on;
            RiseSphere=[S_tau1 S_tau2 S_tau3 S_tau4 S_tau5 S_tau6];
            plot([1:6], RiseSphere, 'r-+');
            save(DataFileName1,'RiseSphere','-ascii','-tabs')
            ylim([0 6])
    
    % Overview of Decaytimes
        %Cylinder
            subplot(2,2,2, 'FontSize', 20)
            hold on;
            DecayDisc=[D_tau_d1 D_tau_d2 D_tau_d3 D_tau_d4 D_tau_d5 D_tau_d6];
            plot([1:6],DecayDisc , 'b-*');
            save(DataFileName4,'DecayDisc','-ascii','-tabs')
            ylim([0 300])

    
        %Sphere
            subplot(2,2,4, 'FontSize', 20)
            hold on;
            DecaySphere=[S_tau_d1 S_tau_d2 S_tau_d3 S_tau_d4 S_tau_d5 S_tau_d6];
            plot([1:6],DecaySphere , 'r-+');
            save(DataFileName2,'DecaySphere','-ascii','-tabs')
            ylim([0 300])

            
            
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
        



 
