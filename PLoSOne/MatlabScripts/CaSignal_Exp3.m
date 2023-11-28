%------------------------------------------------------------------------------------------
%
% Title:    Calcium Signals in Small Structures
% Filename: CaSignal_Exp3.m
% Author:   Ronald van Elburg
% 
% Associated Paper:
% Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007) 
% High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines: 
% Consequences for Spine Calcium Kinetics and Buffer Capacity. 
% PLoS ONE 2(10): e1073 doi:10.1371/journal.pone.0001073
%------------------------------------------------------------------------------------------
% clear all;
close all;
addpath(genpath('..'))
run CaSignal_Exp3LoadData

TotalEndogenousBuffer=45;
DyeTotal = 100;            % muM
Nshells = 6;               % number of shells in the output (NOT IN THE SIMULATION, THERE THE GRIDSIZE DEFINES THE COMPARTMENTS)
R=1;
dR=R/Nshells;


Path='..\Output\';
NameExperiment='CSE3';



imageformat='fig';

run CaSignal_Exp3Sub1
run CaSignal_Exp3Sub2
% run CaSignal_Exp3Sub3
run CaSignal_Exp3Sub4
% run CaSignal_Exp3Sub6
% run CaSignal_Exp3Sub8
% 
% imageformat='pdf'

% run CaSignal_Exp3Sub1
% run CaSignal_Exp3Sub2
% run CaSignal_Exp3Sub3
% run CaSignal_Exp3Sub4
% run CaSignal_Exp3Sub6
% run CaSignal_Exp3Sub8
% 
% imageformat='png'
% 
% run CaSignal_Exp3Sub1
% run CaSignal_Exp3Sub2
% run CaSignal_Exp3Sub3
% run CaSignal_Exp3Sub4
% run CaSignal_Exp3Sub6
% run CaSignal_Exp3Sub8
%%
axes_handles=zeros(3,2);

figure(3112)
    axes_handles(1,1)=gca;
    figure(3000)
    axeshandle1=subplot(2,3,1);
    swapfigures(axeshandle1,axes_handles(1,1))
    
    axes(axes_handles(1,1))
    axis 'manual'
    axis([5,25,0,1])
    

figure(3111)
    axes_handles(1,2)=gca;
    figure(3000)
    axeshandle1=subplot(2,3,4);
    swapfigures(axeshandle1,axes_handles(1,2))

    axes(axes_handles(1,2))
    axis 'manual'
    axis([5,25,0,1])
    
    
figure(3212)
    axes_handles(2,1)=gca;
    figure(3000)
    axeshandle1=subplot(2,3,2);
    swapfigures(axeshandle1,axes_handles(2,1))
    
    axes(axes_handles(2,1))
    axis 'manual'
    axis([5,25,30,60])
    
figure(3211)
    axes_handles(2,2)=gca;
    figure(3000)
    axeshandle1=subplot(2,3,5);
    swapfigures(axeshandle1,axes_handles(2,2))
    
    axes(axes_handles(2,2))
    axis 'manual'
    axis([5,25,30,60])
    
figure(343)
    axes_handles(3,1)=subplot(2,2,3);
    axes_handles(3,2)=subplot(2,2,1);
    figure(3000)
    axeshandle1=subplot(2,3,3);
    swapfigures(axeshandle1,axes_handles(3,1))
    axeshandle1=subplot(2,3,6);
    swapfigures(axeshandle1,axes_handles(3,2))
    
    axes(axes_handles(3,2))
    axis 'manual'
    axis([0,7,0,6])
    
    axes(axes_handles(3,1))
    axis 'manual'
    axis([0,7,0,6])
    
    

%%
% RedistributeSubplots(axes_handles,3,2,0.03,0.03)

%%
% orient landscape
set(axes_handles,'FontSize',9)
set(gcf,'PaperType','A4')

saveas(gcf, '..\Output\FreeAndDyeInShells','pdf')
saveas(gcf, '..\Output\FreeAndDyeInShells','png')
saveas(gcf, '..\Output\FreeAndDyeInShells','fig')
