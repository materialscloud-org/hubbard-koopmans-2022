# Convergence of the total (absolute) energies with respect to the size of the k-points mesh

Another approximation, carried out for the sake of computational implementation, is the discretization of the reciprocal space.
When calculating an integral on a computer, the typical approach is to discretize the space and transform it into a summation over a set of point.  
In our case the k-space is discretized using a [Monkhorst-Pack grid](https://doi.org/10.1103/PhysRevB.13.5188) which is further reduced by eliminatin k-points that are equivalent due to crystal symmetries.

The question that we aim to answer with the following test is "how many points are enought to properly describe my system within a certain threshold?"

For a more complete description, please refer to the [handouts](../../files/handout.pdf) sec 1.5.2.

## Convergence test

In the following test we are going to observe how the total energy of the systems changes when increasing the number of kpoints by changing the dimension of the Monkhorst-Pack grid.

## Example exercise

1. Copy the [provided input files](../../files/NaCl.scf.in) into this folder  
  ```cp ../../files/NaCl.scf.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../../files/pseudo/ .```
3. Modify the input file to use the converged cutoff you obtained in either problem 1.1 or 1.2
4. Run the code pw.x from terminal using the command  
  ```pw.x < Na.scf.in > Na.scf.out```
5. Collect the total energy from the output file (It can be found close to the end, with a line starting with an exclamation mark)
  As a tip, you can use ```grep ! *.out``` to quickly get all lines with an exclamation mark from all files ending in ```.out```
6. Increase the size of the kpoint grid by steps of 2 (e.g.  2x2x2 -> 4x4x4 -> 6x6x6 -> 8x8x8).
7. Repeat points 4 through 6 until a convergence of 5 meV/atom achieved.

TIP: You can modify the [bash script](../../files/script.sh) provided in this repository to automate this process or write your own script in any scripting language.

[BACK TO INDEX](../README.md)
