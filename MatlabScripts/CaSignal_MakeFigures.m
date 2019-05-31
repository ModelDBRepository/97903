%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_MakeFigures.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------

    
    
    FontSize=30;

    load(PlotsFileName)
    % Meshing things up ...
    [SigmaMesh,SecondVarMesh] = meshgrid(SigmaMeshParams, SecondVarMeshParams);

    % get the number of fileformats to which we want to save
    [height_imageformat,width_imageformat]=size(imageformat);
    
    
    LineWidth=4;
    LineWidthXY=1;
    SeparatorColor='k';
    SeparatorLineWidth=3;
    run CaSignal_Make2DFigures
    
    LineWidth=4;
    LineWidthXY=3;
    SeparatorColor='k';
    SeparatorLineWidth=3;
    run CaSignal_MakeContourFigures
    
    
    run CaSignal_MakeBarFigures
