%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: KOnKOff_MergedAtomics.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
clear all
addpath(genpath('.'))

FontWeight='normal'
addpath(genpath('.'))
location_colorbar='East'
colorbarinplot=0

x_spine=0.5;
y_spine=5;
x_dendrite=0.5;
y_dendrite=5;

XTick=0.1:0.2:0.9;
YTick=1:2:9;


f1=openfig('..\Output\CSEKOnKOffD__CombinedContours_Dye_KPlus_EndogenousBuffer_Plot.fig');
axeshandle2=gca
f2=openfig('..\Output\CSEKOnKOffS__CombinedContours_Dye_KPlus_EndogenousBuffer_Plot.fig');
axeshandle3=gca
f3=openfig('..\Output\CSEKOnKOffD__DecayTimes_Dye_KPlus_EndogenousBuffer_Plot.fig');
axeshandle4=gca
f4=openfig('..\Output\CSEKOnKOffS__DecayTimes_Dye_KPlus_EndogenousBuffer_Plot.fig');
axeshandle5=gca
f5=openfig('..\Output\CSEKOnKOffD__RiseTimes_Dye_KPlus_EndogenousBuffer_Plot.fig');
axeshandle6=gca
f6=openfig('..\Output\CSEKOnKOffS__RiseTimes_Dye_KPlus_EndogenousBuffer_Plot.fig');
axeshandle7=gca

axes_handles=zeros(3,2)
bar_handles=zeros(3,2)
%%
figure(700)
 

    axeshandle1=subplot(2,3,6)
    axes_handles(3,2)=axeshandle2
    swapfigures(axeshandle1,axeshandle2)
    axes(axeshandle2)
        plot(axeshandle2,x_dendrite,y_dendrite,'b+','MarkerSize',6)
%         text(.4,9000,['\fontsize{16}\bfF'])
%         image(1:20,1:20,magic(20))
%         bar_handles(3,2)=colorbar('peer',axeshandle2,location_colorbar)
        set(axeshandle2,'LineWidth','default')
    
    axeshandle1=subplot(2,3,3)
    axes_handles(3,1)=axeshandle3
    swapfigures(axeshandle1,axeshandle3)
    axes(axeshandle3)
        plot(axeshandle3,x_spine,y_spine,'r+','MarkerSize',6)
%         text(.4,9000,['\fontsize{16}\bfC'])
%         bar_handles(3,1)=colorbar('peer',axeshandle3,location_colorbar)
        set(axeshandle3,'LineWidth','default')

    axeshandle1=subplot(2,3,5)
    axes_handles(2,2)=axeshandle4
    swapfigures(axeshandle1,axeshandle4)
    
    axes(axeshandle4)
        caxis([0 400])
        bar_handles(2,2)=colorbar('peer',axeshandle4,location_colorbar,'XColor','k','YColor','k','YLim',[0 400]);
        plot(axeshandle4,x_dendrite,y_dendrite,'b+','MarkerSize',6)
%         text(.4,9000,['\color{white}\bf\fontsize{16}E'])
        set(get(axeshandle4,'Xlabel'),'String', 'K_{on,endo} (ms^{-1} \muM^{-1})','FontWeight',FontWeight)
       
    axeshandle1=subplot(2,3,2)
    axes_handles(2,1)=axeshandle5
    swapfigures(axeshandle1,axeshandle5)
    axes(axeshandle5)
        caxis([0 400])
        bar_handles(2,1)=colorbar('peer',axeshandle5,location_colorbar,'XColor','k','YColor','k','YLim',[0 400]);
        plot(axeshandle5,x_spine,y_spine,'r+','MarkerSize',6)
%         text(.4,9000,['\color{white}\bf\fontsize{16}B'])

    axeshandle1=subplot(2,3,4)
    axes_handles(1,2)=axeshandle6
    swapfigures(axeshandle1,axeshandle6)
    axes(axeshandle6)
        caxis([2 8])
        bar_handles(1,2)=colorbar('peer',axeshandle6,location_colorbar,'XColor','k','YColor','k','YLim',[2 8]);
        plot(axeshandle6,x_dendrite,y_dendrite,'b+','MarkerSize',6)
%         text(.4,9000,['\color{white}\bf\fontsize{16}D'])
        set(get(axeshandle6,'Ylabel'),'String', 'K_{off,endo} (ms^{-1})','FontWeight',FontWeight)
%         set(get(axeshandle6,'Xlabel'),'String', 'Extrusion rate (\mum ms^{-1})')
        
    axeshandle1=subplot(2,3,1)
    axes_handles(1,1)=axeshandle7
    swapfigures(axeshandle1,axeshandle7)
    axes(axeshandle7)
        caxis([2 8])
        bar_handles(1,1)=colorbar('peer',axeshandle7,location_colorbar,'XColor','k','YColor','k','YLim',[2 8]);
        plot(axeshandle7,x_spine,y_spine,'r+','MarkerSize',6)
%         text(.4,9000,['\color{white}\bf\fontsize{16}A'])
        set(get(axeshandle7,'Ylabel'),'String', 'K_{off,endo} (ms^{-1})','FontWeight',FontWeight)

close([f1,f2,f3,f4,f5,f6])     
%%
   
% title(axes_handles(2,1),'Influence calcium binding characteristics on fluoresence rise and decay time','Fontsize',12,'HorizontalAlignment','center')

set(axes_handles,'FontSize',9,'FontWeight',FontWeight,'XTick',XTick,'YTick',YTick)
RedistributeSubplots(axes_handles,3,2,0.1,0.1)
set(axes_handles,'TickDir','out')
%% -----------------------Set contour lines to correct color
x_plot_size=3;
y_plot_size=2;


for y_coord=1:1:y_plot_size
    for x_coord=1:1:x_plot_size
        children=findobj(axes_handles(x_coord,y_coord),'Type','hggroup')
        for child=children
            set(child,'LineWidth',3)
            if(y_coord==1)
                set(child,'LineColor','r')
            else
                set(child,'LineColor','b')
            end
        end
    end
end
%% ------------------------- Remove unneeded colorbars ------------------------------------
colorbarShrink=0.8;
for y_coord=1:1:y_plot_size
    for x_coord=1:1:x_plot_size
        if(colorbarinplot==1)
            if(x_coord==3)
                set(bar_handles(x_coord,y_coord),'Visible','Off')
            else
                set(bar_handles(x_coord,y_coord),'Visible','On')
                pos=get(axes_handles(x_coord,y_coord),'Position');
                pos2=get(bar_handles(x_coord,y_coord),'Position');
                pos2=[pos(1)+pos(3)-1.5*pos2(3),pos(2)+pos(4)*(0.95-colorbarShrink),pos2(3),pos(4)*colorbarShrink];
                set(bar_handles(x_coord,y_coord),'Position',pos2)
            end
        else %colorbarinplot~=1
            pos=get(axes_handles(x_coord,y_coord),'Position');
            if(x_coord==3)
                set(axes_handles(x_coord,y_coord),'Position',pos+[0.06,0,0,0]);
            elseif(x_coord==2)
                set(axes_handles(x_coord,y_coord),'Position',pos+[0.06,0,0,0]);
            else
                set(axes_handles(x_coord,y_coord),'Position',pos+[-0.02,0,0,0]);
            end

            if(x_coord==3)
                set(bar_handles(x_coord,y_coord),'Visible','Off')
            else
                set(bar_handles(x_coord,y_coord),'Visible','On')
            end
        end
    end
end
%%

if(colorbarinplot~=1)
    for y_coord=1:1:y_plot_size
        pos1=get(axes_handles(1,y_coord),'Position');
        pos2=get(axes_handles(2,y_coord),'Position');
        
        barpos1=get(bar_handles(1,y_coord),'Position');
        barpos2=get(bar_handles(2,y_coord),'Position');
        
        barpos1=[(pos1(1)+pos1(3)+pos2(1)-barpos1(3))/2,pos1(2)+pos1(4)*(1-colorbarShrink),barpos1(3),pos1(4)*colorbarShrink];
        set(bar_handles(1,y_coord),'Position',barpos1,'YAxisLocation','left')
        
        barpos2=[(pos1(1)+pos1(3)+pos2(1)-barpos1(3))/2,pos1(2)+pos1(4)*(1-colorbarShrink),barpos1(3),pos1(4)*colorbarShrink];
        set(bar_handles(2,y_coord),'Position',barpos2,'YAxisLocation','right')
        
    end
end

%%
orient landscape
set(gcf,'PaperType','A4')
saveas(gcf, '..\Output\KOnKOff_CombinedFigures','fig')
saveas(gcf, '..\Output\KOnKOff_CombinedFigures','png')
saveas(gcf, '..\Output\KOnKOff_CombinedFigures','pdf')
