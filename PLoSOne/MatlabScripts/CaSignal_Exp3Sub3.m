%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3Sub3.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
Observable='BoundaryCalciumOverAverage'

% Define a filename for saving
FigureFileName=[Path,NameExperiment,Observable,'_Time_Plot']


figure(331);
    clf
    hold on;

    %Cylinder
        % Linearize the time domain to allow comparison
        D_CaBoundary_LinearT    =   Make_linear_tdomain(D_CaBoundary, 10, 500, 10000);
        D_CaAverage_LinearT     =   Make_linear_tdomain(D_CaAverage , 10, 500, 10000);

        % Calculate the ratio Boundary Calcium to Average Calcium
        D_BoundaryCalciumOverAverage=(D_CaBoundary_LinearT (:,2)-0.079999999999999)./(D_CaAverage_LinearT(:,2)-0.079999999999999);
        plot(D_CaBoundary_LinearT(:,1),D_BoundaryCalciumOverAverage, 'b', 'LineWidth', 2)
   

    %Sphere
        % Linearize the time domain to allow comparison
        S_CaBoundary_LinearT    =   Make_linear_tdomain(S_CaBoundary, 10, 500, 10000);
        S_CaAverage_LinearT     =   Make_linear_tdomain(S_CaAverage , 10, 500, 10000);

        % Calculate the ratio Boundary Calcium to Average Calcium
        S_BoundaryCalciumOverAverage=(S_CaBoundary_LinearT (:,2)-0.079999999999999)./(S_CaAverage_LinearT(:,2)-0.079999999999999);
        plot(S_CaBoundary_LinearT(:,1),S_BoundaryCalciumOverAverage, 'r', 'LineWidth', 2)
   
    % Set the area to be plotted
        axis([0,500,0.5,1])
        
        
    % Set the fontsize
        set(gca, 'FontSize', 20);


    % Save this figure in the specified location <FigureFileName> in formats fig,pdf or jpg
        saveas(gca,FigureFileName,imageformat)
