function z_norm = NormalizeSignal(z)
%
%   Normalize the signal z by expressing the distance from the minimum value
%   in percentages of the distance between minimum and maximum.
%  
%   Author: Niels Cornelisse

signal_mx = max(z);
signal_mn = min(z);

z_norm = 100*(z-signal_mn)/(signal_mx-signal_mn);