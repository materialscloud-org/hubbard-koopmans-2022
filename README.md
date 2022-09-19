# hubbard-koopmans-2022

This is a tutorial for density-functional theory (DFT) calculations using the open-source [Quantum ESPRESSO distribution](https://www.quantum-espresso.org/) (QE)[1,2].

In each subfolder you will find the required instructions to run the relevant exercise. [Instructions](files/handout.pdf) and all the input and pseudopotential files needed can be found in the ```files``` folder.

For general calculations, SSSP pseudopotentials (PPs) files can be downloaded from the [Materials Cloud](https://www.materialscloud.org/discover/sssp/table/efficiency#sssp-license); other sites providing PPs are [pseudodojo](http://www.pseudo-dojo.org/) and the [Quantum ESPRESSO website](https://www.quantum-espresso.org/pseudopotentials).

All codes required to run the examples are already installed in the Quantum Mobile (see below), a virtual machine (VM) that can run on any Windows, Mac, or Linux laptop/desktop. Both the codes and Quantum Mobile are open source. 

# Using the Quantum Mobile Virtual Machine

The setup of the Quantum Mobile requires you to download the [Quantum Mobile image](https://github.com/marvel-nccr/quantum-mobile/releases/) (we use the v20.03.1 release) and the open-source Virtual Box (VBox) virtualizaton software.   In order to import the image inside VBox, please refer to [this documentation](https://docs.oracle.com/cd/E26217_01/E26796/html/qs-import-vm.html).

NOTE: If you are running this tutorial on a laptop, beware that some manufacturers disable the Virtualization technology at the BIOS level. This feature can be reactivated, but we would advise against doing it yourself unless you know exactly what you are doing, and it might be wiser to install Quantum ESPRESSO natively on your machine - for this, [see instructions](https://www.quantum-espresso.org/Doc/user_guide.pdf)

# Exercises

 - [Exercise 0](0_initial_tests/README.md): Running a PWscf example and obtaining the total energy
 - [Exercise 1](1_convergence_tests/README.md): Convergence tests for input parameters
 - [Exercise 2](2_lattice_param_bulk_modulus/README.md): Determination of the equilibrium lattice length and bulk modulus
 - [Exercise 3](3_elastic_constants/README.md): Determination of the elastic constants

## Bibliography
1. P. Giannozzi, S. Baroni, N. Bonini, M. Calandra, R. Car, C. Cavazzoni, D. Ceresoli, G. L. Chiarotti, M. Cococcioni, I. Dabo, et al., Journal of physics: Condensed matter 21, 395502 (2009).
2. P. Giannozzi, O. Andreussi, T. Brumme, O. Bunau, M. B. Nardelli, M. Calandra, R. Car, C. Cavazzoni, D. Ceresoli, M. Cococcioni, et al., Journal of Physics: Condensed Matter 29, 465901 (2017).


*************

This is a tutorial on how to use density-functional theory (DFT) with extended Hubbard functionals (DFT+U+V), where U and V are on-site and inter-site Hubbard parameters. It is based on the open-source [Quantum ESPRESSO distribution](https://www.quantum-espresso.org/) [1,2].

Quantum ESPRESSO (v6.7) is installed in the Quantum Mobile - a virtual machine that can run on Windows, MacOS, or Linux.

# Using the Quantum Mobile Virtual Machine

See the [Instructions.pdf](https://github.com/materialscloud-org/learn-fireside-hubbard/blob/main/Instructions.pdf) on how to setup the Quantum Mobile on your computer. (Note: the hyperlinks in the file [Instructions.pdf](https://github.com/materialscloud-org/learn-fireside-hubbard/blob/main/Instructions.pdf) work only when you download this file and open it on your computer.)

# Exercises

See the [Tutorial.pdf](https://github.com/materialscloud-org/learn-fireside-hubbard/blob/main/Tutorial.pdf) on how to do the exercises which are listed below:

 - [Exercise 1](1_DFT): Standard DFT calculation for CoO
 - [Exercise 2](2_Hubbard_parameters): Calculation of Hubbard parameters for CoO
 - [Exercise 3](3_DFT+U+V): DFT+U+V calculation for CoO

# Video

[The video of this tutorial](https://www.youtube.com/watch?v=WSABAqPWNH0) is available on YouTube on the official [Quantum ESPRESSO channel](https://www.youtube.com/channel/UCApGrcNfEyEdP7IR8YPyxiQ).

# Bibliography
1. P. Giannozzi et al., J. Phys.: Condens. Matter 21, 395502 (2009).
2. P. Giannozzi et al., J. Phys.: Condens. Matter 29, 465901 (2017).
