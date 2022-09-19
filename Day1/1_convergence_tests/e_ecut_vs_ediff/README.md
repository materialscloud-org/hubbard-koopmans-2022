# Convergence of the total energy differences with respect to energy cutoff

In practice only energy differences have physical meaning, as opposed to absolute energy scales, which can be arbitrarily shifted.
Therefore, it is important to understand the convergence properties with respect to such differences.

## Convergence test

In this test you are going to calculate the difference in total energy between to NaCl crystal with different lattice parameter.
You will then study the convergence of this value with respect to the energy cutoff

In order to test how the amount of included PWs is affecting the accuracy of our calculation, we need to perform a convergence test.  
The idea is to start from a small amount of PWs (cutoff) and to gradually increase it, while tracking the variation in an some quantity (e.g. the total energy of the system).  
We impose a convergence threshold so that, when the variation of our quantity between the highest accuracy calculation performed and a certain cutoff is lower than threshold, we say that we have achieved convergence.  
This value for this threshold is chosen depending on the accuracy of the results that we wish to obtain e.g. if we want to observe variations to the meV in a band structure, we will need a more stringent threshold than if we wanted to look variations in the range of 0.1 eV.

## Example exercise

1. Copy the [provided input files](../../files/NaCl.scf.in) into this folder  
  ```cp ../../files/NaCl.scf.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../../files/pseudo/ .```
3. Create a copy of the input file with a different name where you will change the value of the lattice parameter ```celldm(1)``` to be 1% smaller than the previous one.
4. Run the code pw.x from terminal using the command following command for both files  
  ```pw.x < INPUT_NAME > OUTPUT_NAME```
5. Collect the total energy from the output files (It can be found close to the end, with a line starting with an exclamation mark)
  As a tip, you can use ```grep ! *.out``` to quickly get all lines with an exclamation mark from all files ending in ```.out```
6. Increase the value of ```ecutwfc``` by 10 Ry and the value of ```ecutrho``` by 80 Ry in both the input file.
7. Repeat points 4 through 6 until a convergence of 5 meV/atom is achieved.
8. Compare the converged cutoff value that you obtained in [exercise 1.a](../a_ecut_vs_etot/README.md) with respect to the one in this exercise.

TIP: You can modify the [bash script](../../files/script.sh) provided in this repository to automate this process or write your own script in any scripting language.

[BACK TO INDEX](../README.md)