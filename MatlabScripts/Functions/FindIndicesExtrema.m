function [IndicesMinima, IndicesMaxima] = FindIndicesExtrema(DataVector )
% Author: Ronald van Elburg
%

% Find the derivative
DerivativeData=diff(DataVector);


% Initialize output and auxilary variables
IndicesMinima=[];
IndicesMaxima=[];

i_maximum=1;
i_minimum=1;

% Find first and last point at which DataVector is changing  
pos=find(DerivativeData>0 | DerivativeData<0,1,'first')
endpos= find(DerivativeData~=0,1,'last')

% Determine whether points before first change are a local minimum or maximum
if(DerivativeData(pos)>0)
    i_minimum=pos;
    IndicesMinima=[IndicesMinima,i_minimum];
else
    i_maximum=pos;
    IndicesMaxima=[IndicesMaxima,i_maximum];
end


while(i_maximum < endpos &  i_minimum < endpos)
    
     % The step after the sign change in derivative is down, thus the point
     % on the left is a local maximum.
    i_maximum=i_minimum-1+find(DerivativeData(i_minimum:end) < 0 ,1,'first');
    
    
    if ~i_maximum
        % No maximum found therefore the last step in the range is up and the
        % point right of the last step (assuming time runs from left to right)
        % is a local maximum.
        i_maximum=endpos+1;
    end
    
    IndicesMaxima=[IndicesMaxima,i_maximum];
     
    if i_maximum < endpos
        
        % The step after the sign change in derivative is up, thus the point
        % on the left is local minimum.
        i_minimum=i_maximum-1+find(DerivativeData(i_maximum:end) > 0 ,1,'first');
        
        if(~i_minimum)
            % No minimum found therefore the last step in the range is down and the
            % point right of the last step (assuming time runs from left to right)
            % is a local minimum.
            i_minimum=endpos+1;
        end
        IndicesMinima=[IndicesMinima,i_minimum];
    end
end





