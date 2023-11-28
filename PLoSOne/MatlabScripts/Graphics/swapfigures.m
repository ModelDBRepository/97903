function swapfigures(axeshandle1,axeshandle2)
% Swap the parents of two axes objects (axeshandle1,axeshandle2) and adjust their position to make it 
% fit the position of the axes object with which it was swapped.
%
% This function is meant to support the loading of existing figures in fig
% files and reuse them as subplots in a figure with several panels.
%
% Author:
%   Ronald van Elburg (RonaldAJ at vanelburg eu)

    Axes1.figure=get(axeshandle1,'Parent');
    Axes2.figure=get(axeshandle2,'Parent');

    Axes1.OuterPosition=get(axeshandle1,'OuterPosition');
    Axes2.OuterPosition=get(axeshandle2,'OuterPosition');

    Axes1.Position=get(axeshandle1,'Position');
    Axes2.Position=get(axeshandle2,'Position');

    set(axeshandle1,'Parent',Axes2.figure);
    set(axeshandle2,'Parent',Axes1.figure);

    set(axeshandle1,'OuterPosition',Axes2.OuterPosition);
    set(axeshandle2,'OuterPosition',Axes1.OuterPosition);

    set(axeshandle1,'Position', Axes2.Position);
    set(axeshandle2,'Position', Axes1.Position);
end