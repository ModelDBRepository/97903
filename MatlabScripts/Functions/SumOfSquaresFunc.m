function E=SumOfSquaresFunc(FitParams, X, YMeasured, TrialFunction )

% This function calculates the sum of the squared deviations of 
% the measured data 
%       dependent variable: YMeasured 
%       independent variable: X
% from the theoretical curve obtained by plugging X into the 
%       TrialFunction,
% parametrized by the parameter estimates 
%       FitParams.
% This function was made for use with the matlab inbuilt function
% fminsearch.
%
%  Author: Ronald van Elburg
%

    Y = TrialFunction(X,FitParams);
    E = sum(((YMeasured-Y).^2));
