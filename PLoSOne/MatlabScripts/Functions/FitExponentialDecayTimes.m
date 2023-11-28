function [a0, tau, E] = FitExponentialDecayTimes(t_begin, t_end, time,  Ydat, MakeAPlot)

    function SE=SingleExponent(XCoordinate,FParam)
        SE=FParam(1)*exp(-XCoordinate/FParam(2));
    end
%   This functions calculates a DecayTime tau=FParam(2) and a multiplication
%   factor a0=FParam(1) by trying to minimize the Sum of Squares error
%   measure. Between the function SingleExponent and Ydat.
%
%   Authors: Ronald van Elburg, Niels Cornelisse
%

% Time interval used for fitting
    t_range = time > t_begin & time < t_end;     % fit range

    XValues = time(t_range)-t_begin;
    YValues = Ydat(t_range);

% Initial values for fit parameters 
    a0=YValues(1);
    tau=XValues(end);
    FParams = [a0 tau];

% Setting Optimization options ...
    options_d = optimset('Tolfun',1e-5, 'TolX', 1e-5, 'MaxFunEvals', 1000, 'MaxIter', 1000);

% ... and optimizing
    [FParams, E] = fminsearch(['SumOfSquaresFunc'], FParams, options_d, XValues , YValues, @SingleExponent);

% Final estimates for fitparameters
    a0  = FParams(1);
    tau = FParams(2);

% Plot if requested:
    if ( MakeAPlot>0)
        plot(XValues+t_begin, SingleExponent(XValues,FParams), 'k--');
    end

end