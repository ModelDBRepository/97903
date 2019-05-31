function [BCa] = BCa_SteadyState(K_B, CB_T, CCa)

    BCa=    CCa.*CB_T.*K_B./(1+CCa.*K_B);

end