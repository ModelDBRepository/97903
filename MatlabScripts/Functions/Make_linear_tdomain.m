%-------------------------------------------------------------------------------
% 
% Function:	Make_linear_tdomain(par, tb, te, f)
%
% Author: Ronald van Elburg
%
% 
% Description:
%		Maps a timeseries with variable timestep to a series with fixed timestep
%		using either the average of the points in the interval or the value from
%		the previous time step. 
%
% Usage:
%		par: 	2 column matrix with time in the first column and the time 
%       		dependent variable in the second column 
%		tb:		begin time
%		te:     end time
%		f:		output frequency
%
%-------------------------------------------------------------------------------

function [par_new] = Make_linear_tdomain(par, tb, te, f);

    n=2;                    % Position in the non-linear time-domain 
    dt=1000/f               % time interval is 1000/f because time is in ms and frequency (f) in s^-1

    % Test if the begin of the linear range is  in the non-linear range, otherwise pick
    % first possible begin point
    if tb<=par(1,1)
       tb=par(1,1);
       'Begin time replaced: parameter out of range'
    end 
    
    % Test if the end of the linear range is is in the non-linear range, otherwise pick
    % last possible end point
    if te>=par(end,1)
        te=par(end,1);
        'End time replaced: parameter out of range'
    end

    
    par_new2 =[];

    for ti=tb:dt:te;
       
       % Find two points in the non-linear time range positioned around ti 
       while par(n,1) < ti     
            n=n+1;
       end

       % Interpolate
       par_new2=[par_new2,(par(n,2)-par(n-1,2))./(par(n,1)-par(n-1,1)).*(ti-par(n-1,1))+par(n-1,2)];
    end
    
    % Return the result
    par_new(:,1) = tb:dt:te;
    par_new(:,2)= par_new2;



