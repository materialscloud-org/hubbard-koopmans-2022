# Equilibrium lattice parameter, bulk modulus and B': Birch-Murnhgan equation of state

As you might have seen in the previous set of exercises, we are able to calculate the total energy of our system, with respect to various input parameter, one of which can be the lattice parameter and hence, the cell volume.  
We can demonstrate that the equations of state, such as the third order Birch-Murnhgan (see section 2.2 on the [handsout](../files/handout.pdf)) for more details) ties these two quantities together and a fit of the computed data will give us information about the equilibrium cell volume (lattice parameter), the bulk modulus (B) and its first-order derivative with respect to the pressure(B').  
All this is performed by the small program ```ev.x``` provided with Quantum ESPRESSO.

## Example exercise

1. Copy the [provided input files](../files/NaCl.scf.in) into this folder  
  ```cp ../files/NaCl.scf.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../files/pseudo/ .```
3. Modify the input file to use the converged cutoff and kpoint mesh you obtained in the previous section.
4. Run the code pw.x from terminal using the command  
  ```pw.x < Na.scf.in > Na.scf.out```
5. Collect the total energy from the output file (It can be found close to the end, with a line starting with an exclamation mark)
  As a tip, you can use ```grep ! *.out``` to quickly get all lines with an exclamation mark from all files ending in ```.out```
6. Modify the lattice parameter ```celldm(1)```
7. Repeat step 4 through 5 until you sampled the range of lattice parameters going from -6% to +6% around the experimental lattice parameter
8. Put the data in a 2 column text file where the first column is the lattice parameter (in either a.u. or A) and the second one is the total energy obtained.
9. Inspect the data by plotting it. If you don't see a minimum, extend the range of lattice parameter in the appropriate direction until you have enough points to see a minimum and properly fit it.
10. Run the program ```ev.x``` which will interactively prompt you for various inputs:  
    1. ```Lattice parameter or Volume are in (au, Ang) >```  
      Answering 'Ang' or 'ANG' or 'ang' means the first column of the file you prepared in point 8 is in unit of angstroms.  
      Any other answer will be interpreted as atomic units.
    2. ```Enter type of bravais lattice (fcc, bcc, sc, noncubic) >```  
      Enter 'fcc' since it is the one we are using
    3.  ```Enter type of equation of state :```  
      ```1=birch1, 2=birch2, 3=keane, 4=murnaghan >```  
      Enter 2 for the third-order Birch-Murnhagan
    4. ```Input file >```  
      Enter the name of the file you prepared in point 8
    5. ```Output file >```  
      Enter the name of the file where you wish to save ```ev.x``` output.

[BACK TO INDEX](../README.md)
