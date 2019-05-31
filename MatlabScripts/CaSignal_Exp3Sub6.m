%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3Sub6.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

Observable='DyeInShellvsSteadyState'
K_B=1/0.17      % Binding Rate
CB_T=100        % Dye Concentration


% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']
 



figure(361);
    clf
    hold on;
    
    %Cylinder
        subplot(1,2,1, 'FontSize', 20)
        hold on;


        % Plot BoundDye from Simulation
            plot(D_Dye1(:,1), DyeTotal-D_Dye1(:,2), 'g');
            plot(D_Dye6(:,1), DyeTotal-D_Dye6(:,2), 'c');
            plot(D_DyeAverage(:,1), DyeTotal-D_DyeAverage(:,2), 'k', 'LineWidth', 2);

        % Calculate BoundDye from Steady State Assumption ...

            D_BCaTH1=BCa_SteadyState(K_B,CB_T,D_Ca1(:,2));
            D_BCaTH6=BCa_SteadyState(K_B,CB_T,D_Ca6(:,2));
            D_BCaTHAv=BCa_SteadyState(K_B,CB_T,D_CaAverage(:,2));

        % ... and plot BoundDye from Steady State Assumption 
            plot(D_Ca1(:,1),D_BCaTH1 , 'g--');
            plot(D_Ca6(:,1), D_BCaTH6, 'c--');
            plot(D_CaAverage(:,1),D_BCaTHAv, 'k--', 'LineWidth', 2);

        % Set the area to be plotted
            xlim([0 150])
            ylim([30 70])
        
    %Sphere    
        subplot(1,2,2, 'FontSize', 20)
        hold on;

        % Plot BoundDye from Simulation
            plot(S_Dye1(:,1), DyeTotal-S_Dye1(:,2), 'g');
            plot(S_Dye6(:,1), DyeTotal-S_Dye6(:,2), 'c')
            plot(S_DyeAverage(:,1), DyeTotal-S_DyeAverage(:,2), 'k', 'LineWidth', 2);

        % Calculate BoundDye from Steady State Assumption ...
            S_BCaTH1=BCa_SteadyState(K_B,CB_T,S_Ca1(:,2));
            S_BCaTH6=BCa_SteadyState(K_B,CB_T,S_Ca6(:,2));
            S_BCaTHAv=BCa_SteadyState(K_B,CB_T,S_CaAverage(:,2));

        % ... and plot BoundDye from Steady State Assumption 
            plot(S_Ca1(:,1), S_BCaTH1, 'g--');
            plot(S_Ca6(:,1), S_BCaTH6, 'c--');
            plot(S_CaAverage(:,1),S_BCaTHAv, 'k--', 'LineWidth', 2);

        % Set the area to be plotted
            xlim([0 150])
            ylim([30 70])
        
        
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
        


Observable='EndoBufferInShellvsSteadyState'
K_B=1/2         % Binding Rate
CB_T=45         % Buffer Concentration
TotalEndogenousBuffer=CB_T

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']

figure(362);
    clf
    hold on;
    
    %Cylinder
        subplot(1,2,1, 'FontSize', 20)
        hold on;


        % Plot BoundBuffer from Simulation
            plot(D_EndoB1(:,1), TotalEndogenousBuffer-D_EndoB1(:,2), 'g');
            plot(D_EndoB6(:,1), TotalEndogenousBuffer-D_EndoB6(:,2), 'c');
            plot(D_EndoBAverage(:,1), TotalEndogenousBuffer-D_EndoBAverage(:,2), 'k', 'LineWidth', 2);

        % Calculate BoundBufferfrom Steady State Assumption ...

            D_BCaTH1=BCa_SteadyState(K_B,CB_T,D_Ca1(:,2));
            D_BCaTH6=BCa_SteadyState(K_B,CB_T,D_Ca6(:,2));
            D_BCaTHAv=BCa_SteadyState(K_B,CB_T,D_CaAverage(:,2));

        % ... and plot BoundBuffer from Steady State Assumption 
            plot(D_Ca1(:,1),D_BCaTH1 , 'g--');
            plot(D_Ca6(:,1), D_BCaTH6, 'c--');
            plot(D_CaAverage(:,1),D_BCaTHAv, 'k--', 'LineWidth', 2);

        % Set the area to be plotted
            xlim([0 150])
            ylim([1.5 8])
        
    %Sphere    
        subplot(1,2,2, 'FontSize', 20)
        hold on;

         % Plot BoundBuffer from Simulation
            plot(S_EndoB1(:,1), TotalEndogenousBuffer-S_EndoB1(:,2), 'g');
            plot(S_EndoB6(:,1), TotalEndogenousBuffer-S_EndoB6(:,2), 'c');
            plot(S_EndoBAverage(:,1), TotalEndogenousBuffer-S_EndoBAverage(:,2), 'k', 'LineWidth', 2);

        % Calculate BoundBuffer from Steady State Assumption ...
            S_BCaTH1=BCa_SteadyState(K_B,CB_T,S_Ca1(:,2));
            S_BCaTH6=BCa_SteadyState(K_B,CB_T,S_Ca6(:,2));
            S_BCaTHAv=BCa_SteadyState(K_B,CB_T,S_CaAverage(:,2));

        % ... and plot BoundBuffer from Steady State Assumption 
            plot(S_Ca1(:,1), S_BCaTH1, 'g--');
            plot(S_Ca6(:,1), S_BCaTH6, 'c--');
            plot(S_CaAverage(:,1),S_BCaTHAv, 'k--', 'LineWidth', 2);

        % Set the area to be plotted
            xlim([0 150])
            ylim([1.5 8])
        
        
    % Save this figure in the specified location <FigureFileName> in formats fig,pdf,jpg
        saveas(gca,FigureFileName,imageformat)
        

