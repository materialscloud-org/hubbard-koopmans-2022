# Convergence of forces with respect to the size of the k-points mesh

## Convergence test

Similarly to the [exercise 1.2](../2_ecut_vs_forces), we are going to calculate the convergence with respect to the forces acting on th atoms, but this time changing the dimension of the kpoint grid like in [exercise 1.3](../3_kpt_vs_etot).  

## Example exercise

1. Copy the [provided input files](../../files/NaCl.scf.in) into this folder  
  ```cp ../../files/NaCl.scf.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../../files/pseudo/ .```
3. Modify the input file to use the converged cutoff you obtained in either problem 1.a or 1.b
4. Run the code pw.x from terminal using the command  
  ```pw.x < Na.scf.in > Na.scf.out```
5. Collect the value of the forces acting on the two atoms (you expect to have the x and y components equal to 0 and that Fz_Na = - Fz_Cl).
  The lines containing this information in the output file will look like this:  
  ```atom    1 type  1   force =     0.00000000    0.00000000    0.02365046```
6. Increase the size of the kpoint grid by steps of 2 (e.g.  6x6x6 -> 8x8x8 -> ...).
7. Repeat points 4 through 6 until a convergence of 10 meV/Angstrom achieved.


TIP: You can modify the [bash script](../../files/script.sh) provided in this repository to automate this process or write your own script in any scripting language.

[BACK TO INDEX](../README.md)
