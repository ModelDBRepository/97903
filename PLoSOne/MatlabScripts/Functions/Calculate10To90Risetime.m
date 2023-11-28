function [tau, t10] = Calculate10To90Risetime(t, data)
%
% Determine 10 to 90 percent risetime tau of the timeseries (t,data) for a time
% series that rises monotonically from the start of the series to its maximum.
%
%
% Author: Ronald van Elburg
%

% Determine Extrema
    signal_mx = max(data);
    signal_mn = min(data);

% Calculate the 10 and 90 percent values
    data10 = 0.1*(signal_mx-signal_mn)+signal_mn;
    data90 = 0.9*(signal_mx-signal_mn)+signal_mn;

    
% Determine physical boundaries on index
    DataSizeV=size(data);
    DataSize=DataSizeV(1);

% Find first point in time series for which we are above 10 percent and
% first point at or below ....
    i_upper=find(data > data10,1,'first');
    i_lower=i_upper-1;
    
    if(i_upper == 1)
           t10=0   
           tau=0
           error('Trace is flat or has maximum within first two timesteps')
           return
    end
    
    t10upper = t(i_upper);      data10upper=data(i_upper);
    t10lower = t(i_lower);      data10lower=data(i_lower);
% ... and calculate t at which we reached 10 percent
    
    t10=(t10upper-t10lower)/(data10upper-data10lower)*(data10-data10lower)+t10lower;


% Find last point in time series for which we are below 90 percent and
% first point at or above ....
    i_delta=find(data(i_upper:end) > data90,1,'first');
    i_upper=i_upper+i_delta-1;
    i_lower=i_upper-1 ;
      
    t90upper = t(i_upper);      data90upper=data(i_upper);
    t90lower = t(  i_lower);    data90lower=data(i_lower);
    
% ... and calculate t at which we reached 90 percent
    
    t90=(t90upper-t90lower)/(data90upper-data90lower)*(data90-data90lower)+t90lower;


% Calculate the rise time.
    tau = t90-t10;






