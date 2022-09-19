# Convergence of total (absolute) energies with respect to cutoff energies

The Kohn-Sham wavefunctions (WFs) of a solid are expanded using some basis set. In Quantum ESPRESSO the Plane Waves (PWs) basis set is used.  
While an exact representation of the WFs would require an infinite number of PWs, a computational implementation necessarily requires the use a finite number of PWs.  
This subset of PWs is most commonly defined by applying a cutoff to the plane waves G-vector modulus, or respectively its associated energy.
Effectively we are limiting our subset to all the PWs with G-vector within a sphere of radius G_cut from the origin.

For a more complete description, please refer to the [handouts](../../files/handout.pdf) sec 1.5.1.

## Convergence test

In order to test how the number of included PWs is affecting the accuracy of our calculations, we need to perform a convergence test.  
The idea is to start from a small number of PWs (i.e. low cutoff) and to gradually increase it, while tracking the variation of some quantity (e.g. the total energy of the system).  
We impose a convergence threshold so that, when the variation of our quantity of interest between the highest accuracy calculation performed and a certain cutoff is lower than threshold, we say that we have achieved convergence.  
This value for this threshold is chosen depending on the accuracy of the results that we wish to obtain e.g. if we want to observe variations to the meV in a band structure, we will need a more stringent threshold than if we wanted to look variations in the range of 0.1 eV.

## Example exercise

1. Copy the [provided input files](../../files/NaCl.scf.in) into this folder  
  ```cp ../../files/NaCl.scf.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../../files/pseudo/ .```
3. Run the code pw.x from terminal using the command  
  ```pw.x < Na.scf.in > Na.scf.out```
4. Collect the total energy from the output file (It can be found close to the end, with a line starting with an exclamation mark)
  As a tip, you can use ```grep ! *.out``` to quickly get all lines with an exclamation mark from all files ending in ```.out```
5. Increase the value of ```ecutwfc``` by 10 Ry and the value of ```ecutrho``` by 80 Ry in the input file.
6. Repeat points 3 through 5 until a convergence of 5 meV/atom is achieved.

TIP: You can modify the [bash script](../../files/script.sh) provided in this repository to automate this process or write your own script in any scripting language.

[BACK TO INDEX](../README.md)
