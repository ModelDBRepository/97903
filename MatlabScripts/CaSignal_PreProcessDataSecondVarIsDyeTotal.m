%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_PreProcessDataSecondVarIsDyeTotal.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------



% Geometries
DiskGeometry='D_';
SphereGeometry='S_';

% Auxilary Matrices and Vectors Used for Plotting
TimeSeries=[];
TauRiseMatrix=[];   TauRiseMatrixInner=[];  TauRiseMatrixOuter=[];TauRiseMatrixCompare=[];
TauDecayMatrix=[];  TauDecayMatrixInner=[]; TauDecayMatrixOuter=[];TauDecayMatrixCompare=[];

% Reading the Data and finding rise and decay times
Geometry=DiskGeometry
for sigma=5:5:200
    if(sigma>40) 
        Geometry=SphereGeometry
    end
    
    TauRiseCol=[];TauDecayCol=[];
    
    for SecondVar=SecondVarFileMesh 
        % Compile the filename ...
        DataFileName=[NameExperiment,Geometry,Observable,'Average_',num2str(sigma),'_',num2str(SecondVar)];
        % ... , load the data from the file ...
        TimeSeries=load(DataFileName);
        % ..., and calculate the signal
        DyeSignal=NormalizeSignal(SecondVar-TimeSeries(:,2));

        % Calculate the rise time ...
        [tau_rise, t_begin_rise]        = Calculate10To90Risetime(TimeSeries(:,1),DyeSignal);
        % ... and append it to the corresponding column vector
        TauRiseCol=[TauRiseCol;tau_rise];

        % Calculate the decay time ...
        [a0_decay, tau_decay,E_decay]   =FitExponentialDecayTimes(50, 500, TimeSeries(:,1),DyeSignal,0);
         % ... and append it to the corresponding column vector
        TauDecayCol=[TauDecayCol;tau_decay];   
    end
    
    % Append the columns to the corresponding matrices before moving to the
    % next column
    TauRiseMatrix=[TauRiseMatrix,TauRiseCol];
    TauDecayMatrix=[TauDecayMatrix,TauDecayCol]; 
end

    
   

% Compare Inner and Outer Shell Decay And Rise times for representative
% points.
    % Reading the Data
    Geometry=DiskGeometry
    for sigma=[5,20,40,45,120,200]
        if(sigma>40) 
            Geometry=SphereGeometry
        end

        TauRiseCol=[];  TauRiseColInner=[];     TauRiseColOuter=[];
        TauDecayCol=[]; TauDecayColInner=[];    TauDecayColOuter=[];

        for SecondVar=[SecondVarFileMesh(end-39),SecondVarFileMesh(end-20),SecondVarFileMesh(end)] 
            % Compile the filename ...
            DataFileNameInner=[NameExperiment,Geometry,Observable,'6_',num2str(sigma),'_',num2str(SecondVar)];
            DataFileNameOuter=[NameExperiment,Geometry,Observable,'1_',num2str(sigma),'_',num2str(SecondVar)];
            % ... , load the data from the file ...
            TimeSeriesInner=load(DataFileNameInner);
            TimeSeriesOuter=load(DataFileNameOuter);
            % ..., and calculate the signal
            DyeSignalInner=NormalizeSignal(SecondVar-TimeSeriesInner(:,2));
            DyeSignalOuter=NormalizeSignal(SecondVar-TimeSeriesOuter(:,2));

            % Calculate the rise times ...
            [tau_rise_inner, t_begin_rise_inner]        = Calculate10To90Risetime(TimeSeriesInner(:,1),DyeSignalInner);
            [tau_rise_outer, t_begin_rise_outer]        = Calculate10To90Risetime(TimeSeriesOuter(:,1),DyeSignalOuter);
            % ... and append it to the corresponding column vector
            TauRiseColInner=[TauRiseColInner;tau_rise_inner];
            TauRiseColOuter=[TauRiseColOuter;tau_rise_outer];

            % Calculate the decay time ...
            [a0_decay_inner, tau_decay_inner,E_decay_inner]   =FitExponentialDecayTimes(50, 500, TimeSeriesInner(:,1),DyeSignalInner,0);            
            [a0_decay_outer, tau_decay_outer,E_decay_outer]   =FitExponentialDecayTimes(50, 500, TimeSeriesOuter(:,1),DyeSignalOuter,0);
             % ... and append it to the corresponding column vector
            TauDecayColInner=[TauDecayColInner;tau_decay_inner];
            TauDecayColOuter=[TauDecayColOuter;tau_decay_outer];
        end

        % Append the columns to the corresponding matrices before moving to the
        % next column
        TauRiseMatrixInner=[TauRiseMatrixInner,TauRiseColInner];
        TauRiseMatrixOuter=[TauRiseMatrixOuter,TauRiseColOuter];
        TauDecayMatrixInner=[TauDecayMatrixInner,TauDecayColInner]; 
        TauDecayMatrixOuter=[TauDecayMatrixOuter,TauDecayColOuter];
    end

    % And save the data
    MatrixEnd=size(TauRiseMatrix,2)
    
    TauRiseMatrixCompare=TauRiseMatrix([1,4,8,9,24,40],[MatrixEnd-39,MatrixEnd-20,MatrixEnd])
    TauDecayMatrixCompare=TauDecayMatrix([1,4,8,9,24,40],[MatrixEnd-39,MatrixEnd-20,MatrixEnd])
    
    
    save(PlotsFileName, 'TauRiseMatrix', 'TauDecayMatrix','TauRiseMatrixCompare','TauRiseMatrixInner', 'TauRiseMatrixOuter', 'TauDecayMatrixCompare','TauDecayMatrixInner',  'TauDecayMatrixOuter')
 
