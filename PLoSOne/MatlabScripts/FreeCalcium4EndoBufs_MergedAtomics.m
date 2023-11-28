%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: FreeCalcium4EndoBufs_MergedAtomics.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
clear all

addpath(genpath('..\MatlabScripts'))
figure(7)
FontWeight='normal'
% Loading Pictures
    % Single AP
%     f1=openfig('..\Output\ExpB8CSE8AFreeCalciumInShellsRisePhaseSeparated_Time_Plot.fig');
                        
    f1=openfig('..\Output\ExpB8CSEB8AFreeCalciumInShellsRisePhaseSeparated_Time_Plot.fig');
    subplot(2,1,1) % Dendrite
    axeshandle1=gca;
    subplot(2,1,2) % Spine
    axeshandle2=gca;

    % AP Train
    f2=openfig('..\Output\ExpB8CSEB8BFreeCalciumInShellsRisePhaseSeparated_Time_Plot.fig');
    subplot(2,1,1) % Dendrite
    axeshandle3=gca;
    subplot(2,1,2) % Spine
    axeshandle4=gca;

    % Calmodulin
    f3=openfig('..\Output\ExpB8CSEB8EDyeAverageRisePhaseNN_Time_Plot.fig');
    axeshandle5=gca
    f4=openfig('..\Output\ExpB8CSEB8FDyeAverageRisePhaseNN_Time_Plot.fig');
    axeshandle6=gca

    % Parvalbumin
    f5=openfig('..\Output\ExpB8CSEB8GbFreeCalciumAverageRiseTime_Time_Plot.fig');
    axeshandle7=gca % Spine Only

    % Calbindin 
    f6=openfig('..\Output\ExpB8CSEB8HbFreeCalciumAverageRiseTime_Time_Plot.fig');
    axeshandle8=gca % Spine Only


axes_handles7=zeros(2,2)
axes_handles8=zeros(2,2)
% Putting the Pictures together in a Panel
    figure(7)
        % ---------------------------
        axeshandle=subplot(2,2,1)
        axes_handles7(1,1)=axeshandle2
        swapfigures(axeshandle,axeshandle1)
        axis([0,120,0,1.5])
        set(get(axeshandle1,'Ylabel'),'String', 'Free Calcium (\muM)','FontWeight',FontWeight)
%         text(9,1.35,['\fontsize{16}\bfC'])
        % ---------------------------
        axeshandle=subplot(2,2,3)
        axes_handles7(2,1)=axeshandle1
        swapfigures(axeshandle,axeshandle2)
        axis([0,120,0,1.5])
        set(get(axeshandle2,'Ylabel'),'String', 'Free Calcium (\muM)','FontWeight',FontWeight)
%         text(9,1.35,['\fontsize{16}\bfA'])
        
        % ---------------------------
        axeshandle=subplot(2,2,2)
        axes_handles7(1,2)=axeshandle4
        swapfigures(axeshandle,axeshandle3)
        axis([0,120,0,1.5])
%         text(9,1.35,['\fontsize{16}\bfD'])
        
        % ---------------------------
        axeshandle=subplot(2,2,4)
        axes_handles7(2,2)=axeshandle3
        swapfigures(axeshandle,axeshandle4)
        axis([0,120,0,1.5])
%         text(9,1.35,['\fontsize{16}\bfB'])


   figure(8)    
        % ---------------------------
        axeshandle=subplot(2,2,1)
        axes_handles8(1,1)=axeshandle5
        swapfigures(axeshandle,axeshandle5)
        axis([0,120,0,5])
        set(get(axeshandle5,'Ylabel'),'String', 'Calcium-Calmodulin (\muM)','FontWeight',FontWeight)
%          text(105,4.4,['\fontsize{16}\bfA'])
        % ---------------------------  
        axeshandle=subplot(2,2,2)
        axes_handles8(1,2)=axeshandle6
        swapfigures(axeshandle,axeshandle6)
        axis([0,120,0,5])
%          text(105,4.4,['\fontsize{16}\bfB'])
        % ---------------------------
        axeshandle=subplot(2,2,3)
        axes_handles8(2,1)=axeshandle7
        swapfigures(axeshandle,axeshandle7)
        axis([0,50,0,0.8])
        set(get(axeshandle7,'Ylabel'),'String', 'Free Calcium (\muM)','FontWeight',FontWeight)
        set(get(axeshandle7,'Xlabel'),'String', 'Time (ms)','FontWeight',FontWeight)
%         text(105,.7,['\fontsize{16}\bfC'])
        % ---------------------------
        axeshandle=subplot(2,2,4)
        axes_handles8(2,2)=axeshandle8
        swapfigures(axeshandle,axeshandle8)
        axis([0,50,0,0.8])
        set(get(axeshandle8,'Xlabel'),'String', 'Time (ms)','FontWeight',FontWeight)
%         text(105,.7,['\fontsize{16}\bfD'])
       
close([f1,f2,f3,f4,f5,f6]) 
%% Make figure look consistent
ysize=2
xsize=2
axes_handles=axes_handles7
    for ycoord=1:ysize
        for xcoord=1:xsize
            axes_handle=axes_handles(ycoord,xcoord);
            if(axes_handle~=0)
                set(axes_handle,'FontSize',9,'FontWeight',FontWeight)
                xlim(axes_handle,[0,120])
                children=findobj(axes_handle,'Type','line')
                for child=children
                    set(child,'LineWidth',1)
                    if(ycoord==1)
                        set(child,'Color','r')
                    else
                        set(child,'Color','b')
                    end
                end
            end
        end
    end
   

axes_handles=axes_handles8
    for ycoord=1:ysize
        for xcoord=1:xsize
            axes_handle=axes_handles(ycoord,xcoord);
            if(axes_handle~=0)
                set(axes_handle,'FontSize',9,'FontWeight',FontWeight)
                xlim(axes_handle,[0,120])
                children=findobj(axes_handle,'Type','line')
                for child=children
                    set(child,'LineWidth',1)
                end
            end
        end
    end
%%
RedistributeSubplots(axes_handles7',2,2,0.1,0.1,0)
RedistributeSubplots(axes_handles8',2,2,0.1,0.1,0)
set(axes_handles7,'YAxisLocation','left','XAxisLocation','bottom')
set(axes_handles8,'YAxisLocation','left','XAxisLocation','bottom')
%%
figure(7)
    orient landscape
    saveas(gcf, '..\Output\FreeCa_CombinedFigures','pdf')
    saveas(gcf, '..\Output\FreeCa_CombinedFigures','png')
    saveas(gcf, '..\Output\FreeCa_CombinedFigures','fig')
figure(8)
    orient landscape
    saveas(gcf, '..\Output\EndoBufs_CombinedFigures','pdf')
    saveas(gcf, '..\Output\EndoBufs_CombinedFigures','png')
    saveas(gcf, '..\Output\EndoBufs_CombinedFigures','fig')
