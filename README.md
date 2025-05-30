# Calcium Dynamics Modeling Software

Author: Ronald van Elburg (RonaldAJ at vanElburg eu)

This software contains all the code used in the modelling and subsequent analysis of calcium dynamics as described in the paper:
Cornelisse LN, van Elburg RAJ, Meredith RM, Yuste R, Mansvelder HD (2007)
High Speed Two-Photon Imaging of Calcium Dynamics in Dendritic Spines:
Consequences for Spine Calcium Kinetics and Buffer Capacity.
*PLoS ONE* 2(10): e1073 doi:10.1371/journal.pone.0001073

This software is released under the GNU GPL version 3:
http://www.gnu.org/copyleft/gpl.html

## Purpose

To show how the Calcium signal changes in time after an action potential and how these timecourses depend on the distance to the membrane and the membrane morphology which can be spherical (spine) or cylindrical (dendrite).

## Background

The model code organized in par-files is developed for CalC 5.0.3, available from:
http://web.njit.edu/~matveev/calc.html

Analysis was done using Matlab (The Mathworks, Natick, MA):
http://www.mathworks.com/.

The model can be found in the main file `CaSignal_Main.par` which describes the core model. The other `*.par` files specify the experiments carried out with the model and which model variables are exported to file for analysis. The files `runcalcscripts.sh` and `CaSignal_Master.m` describe which files are needed for which paper figures, and can also be used for generating all model figures albeit in a slightly different organization than found in the paper. The shell script `runcalcscripts.sh` was developed under Windows using the bash from Cygwin.

The recommendation for code reuse is to focus on the calc scripts specifying the model and write new MATLAB analysis code. The MATLAB code is merely provided to make it possible to check the results in our paper and is not meant for reuse.

## General organization of the code

### For 2D parameter scans

Output files: `Output/*_CombinedFigures.pdf` where `*` is one of `KdEndo`, `SVREndo`, `SVREndoCalmod`, `DtGamma`, or `KOnKOff`.

Steps:
1. Ensure the existence of the folder `Exp*` in the Output folder.
2. Run `CaSignal_*Sphere.par` (Simulations for the spine.)
   Run `CaSignal_*Disc.par` (Simulations for the dendrite.)
3. Run `CaSignal_*.m` (Process data and generate figures.)
4. Run `*_MergedAtomics.m` (Gather main figures into one combined figure.)

### For individual traces

Output files:
- `Output/FreeAndDyeInShells.pdf`
- `Output/EndoBufs_CombinedFigures.pdf`

Steps:
1. Ensure the existence of the folders `Exp3`, `ExpB8A`, `ExpB8B`, `ExpB8E`, `ExpB8F`, `ExpB8G`, `ExpB8H` in the Output folder.
2. Run `CaSignal*Sphere.par` (Simulations for the spine.)
   Run `CaSignal*Disc.par` (Simulations for the dendrite.)
   where `*` corresponds to elements from the list in step 1.
3. Run `CaSignal_Exp3.m`, `CaSignal_Exp8.m` (Process data and generate figures.)
4. Adjust paths in and then run: `Python/DoRenameFiles.py`
   Run `FreeCalcium4EndoBufs_MergedAtomics.m` (Gather main figures into one combined figure.)

### Also for individual traces

For output file:
`Output/Exp4DCSE4DBoundDyeAverageRisePhase_Time_Plot_Combi.pdf`

Steps:
1. Ensure the existence of the `Exp4D` folder in the Output folder.
2. Run `CaSignal*Sphere.par` (Simulations for the spine.)
   Run `CaSignal*Disc.par` (Simulations for the dendrite.)
   where `*` corresponds to elements from the list in step 1.
3. Run `CaSignal_Exp4D.m` (Process data and generate figures.)

---

2025-05-30: Standardized to Markdown, and separated sections with proper headings. Maintained original formatting and URLs.