#!/usr/bin/bash
###################################### Preambule ###############################
# This script acts in two roles, its first role is to document the relation between figures in the PLoS One paper:
# `Determinants of fast calcium dynamics in dendritic spines and dendrites during non-steady state conditions'
# by L. Niels Cornelisse, Ronald A.J. van Elburg, Rhiannon Meredith1, Rafael Yuste and Huibert D. Mansvelder
# and the simulation scripts, its second role is that it can be used to run all these scripts or a subset. Because 
# the simulations take a fair amount of time, all the simulations are commented out by default. The user will have
# to uncommment to run them from this script.
#
# All scripts import the main model from the file CaSignal_main.par
##################################### Actual script ############################


# Define path to CalC program
function  runcalc () { 
    rxvt -e /cygdrive/C/Programs/CalC_5_0_3/CalC $1 &
}

# Run CalC scripts (beware many of the scripts below take several hours to run, 
# in total also about 60 GB of free harddisc space  are needed for storing the 
# simulation data)
#
# Figure 3 (BCD): Scan width influx (Dt) versus Extrusion rate (GAMMA)
# runcalc CaSignal_DtGammaDisc.par 
# runcalc CaSignal_DtGammaSphere.par 
# sleep 75m
# runcalc CaSignal_DtGammaSphereII.par 
# runcalc CaSignal_DtGammaDiscII.par 
# sleep 75m
#
# Figure 3 (EF): Fluorescence for standard model parameters
#
# runcalc CaSignal_Exp7ADisc.par 
# runcalc CaSignal_Exp7ASphere.par 
# sleep 15m
# runcalc CaSignal_Exp7BDisc.par 
# runcalc CaSignal_Exp7BSphere.par 
# sleep 15m
# runcalc CaSignal_Exp4DDisc.par 
# runcalc CaSignal_Exp4DSphere.par 
# sleep 15m
# runcalc CaSignal_Exp4Disc.par 
# runcalc CaSignal_Exp4Sphere.par 
# sleep 15m
# 
# Figure 4 (A)
# runcalc CaSignal_Exp3Disc.par
# runcalc CaSignal_Exp3Sphere.par
# sleep 15m
#
# Figure 4 (BCD)
# runcalc CaSignal_XDiffKOnDisc.par 
# runcalc CaSignal_XDiffKOnDiscTraces.par 
# runcalc CaSignal_XDiffKOnSphere.par 
# runcalc CaSignal_XDiffKOnSphereTraces.par 
# sleep 75m
#
# Figure 5 (ABC):
#
# runcalc CaSignal_KdEndoDisc.par
# runcalc CaSignal_KdEndoDiscTraces.par 
# runcalc CaSignal_KdEndoSphere.par 
# runcalc CaSignal_KdEndoSphereTraces.par 
# sleep 75m
#
# Figure 5 (DEF):
# runcalc CaSignal_KOnKOffDisc.par 
# runcalc CaSignal_KOnKOffDiscTraces.par 
# runcalc CaSignal_KOnKOffSphere.par 
# runcalc CaSignal_KOnKOffSphereTraces.par 
# sleep 75m
#
# Figure 6 (ABC):
# runcalc CaSignal_SVREndoDisc.par 
# runcalc CaSignal_SVREndoDiscTraces.par 
# runcalc CaSignal_SVREndoSphere.par 
# runcalc CaSignal_SVREndoSphereTraces.par 
# sleep 75m
#
# Figure 7 (AB):
# runcalc CaSignal_Exp8ADisc.par 
# runcalc CaSignal_Exp8ASphere.par 
# sleep 15m
# runcalc CaSignal_Exp8BDisc.par 
# runcalc CaSignal_Exp8BSphere.par 
# sleep 15m
#
# Figure 7 (C):
# runcalc CaSignal_Exp8EDisc.par 
# runcalc CaSignal_Exp8ESphere.par 
# sleep 15m
# runcalc CaSignal_Exp8FDisc.par 
# runcalc CaSignal_Exp8FSphere.par 
# sleep 15m
#
# Figure 7 (D):
# runcalc CaSignal_SVREndoCalmodDisc.par 
# runcalc CaSignal_SVREndoCalmodDiscTraces.par 
# runcalc CaSignal_SVREndoCalmodSphere.par 
# runcalc CaSignal_SVREndoCalmodSphereTraces.par 
# sleep 75m
#
# Figure 7 (E):
# runcalc CaSignal_Exp8GbDisc.par 
# runcalc CaSignal_Exp8GbSphere.par 
# sleep 15m
# runcalc CaSignal_Exp8HbDisc.par 
# runcalc CaSignal_Exp8HbSphere.par 
# sleep 15m
#
# Figure Supplementary
# runcalc CaSignal_XDiffKOnDiscTraces.par 
# runcalc CaSignal_XDiffKOnDisc.par 
# sleep 75m

