# Calculation of the elastic constants

Another thing that can be measured, is the response of the system, in terms of total energy variation, with respect to a strain.
By applying small strains to the equilibrium unit cell and carefully choosing the strain matrix (see [presentation](../files/elastic_constants.pdf)), we can use the response to determine the elastic constants of the system.  
In the case of NaCl with rock-salt structure, the symmetries of the system make it so that only 3 independent elastic constant are present: C_11, C_12 and C_44.

Please take note of a few differences from the previous exercises:
- In this case to properly apply the strain, we are using a conventional cell consisting of 8 atoms instead of the primitive one consisting of 2
- Since the conventional cell is bigger then the primitive one, the number of k-point required to achieve convergence will be lower.
  While the convergence parameters should always be re-evaluated, for the purpose of this exercise you can assume that a 2x2x2 grid is enough.
- The calculation type has been changed from ```scf``` to ```relax```. This is required as after applying the strain in the unit cell, the atoms might not be in their equilibrium position.
  The relax calculation will perform a series of ```scf``` calculation, calculating the forces acting on the atoms and moving them accordingly between each iteration, until these forces are below a certain threshold (defined by default in QE, but can be [specified by the used](https://www.quantum-espresso.org/Doc/INPUT_PW.html#idm118))

## Example exercise

1. Copy the [provided input files](../files/NaCl.scf.in) into this folder  
  ```cp ../files/NaCl.relax.in .```
2. Copy or link the pseudopotential files for Na and Cl inside a folder named ```pseudo``` in the same path of the input file  
  ```cp -r ../files/pseudo/ .```
3. Modify the input file to use the converged parameters you obtained in the previous section.
  As stated in the introduction, the convergence requirement on the kpoints will be lower since we are using a conventional cell.  
  Also we suggest using a slightly reduced cutoff and/or increase the number of virtual cores assigned to the virtual machine see [handouts](../files/handout.pdf) section 1.7, in order to be able to run this exercise in a reasonable time.
4. Run the code pw.x from terminal using the command  
  ```pw.x < Na.relax.in > Na.relax.out```
5. Collect the total energy from the output file (It can be found close to the end, with a line starting with an exclamation mark)  
  NOTE: while the values of the total energy are still identifiable by an exclamation mark in the output, there will be several occurrences, one for each 'scf' iteration in the 'relax' cycle.
  Take care to record the last of this values which corresponds to the relaxed structure.
6. Modify the lattice cell vectors (rows under the input file card ```CELL_PARAMETERS {alat}```) by applying the strain configuration described in the [presentation](../files/elastic_constants.pdf) meant to calculate ```C_11 - C_12```
7. Repeat step 4 through 6 by applying different values of strain, from -2% to +2% in steps of 1% or 0.5%
8. Fit the obtained data in order to extract the value of ```C_11 - C_12```
9. Use the value of the Bulk modulus calculated in [exercise 6](../6_mechanical_properties_lattice_param/README.md) together with the value of ```C_11 - C_12``` obtained here to derive C_11 and C_12
10. Repeat step 4 through 8 with the other strain configuration provided to calculate C_44


[BACK TO INDEX](../README.md)
