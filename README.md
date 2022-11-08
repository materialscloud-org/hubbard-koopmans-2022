# Advanced Quantum ESPRESSO tutorial: Hubbard and Koopmans functionals from linear response

Website of the event: https://sites.google.com/view/hubbard-koopmans 

This is a tutorial for advanced calculations based on density-functional theory (DFT) using the open-source [Quantum ESPRESSO distribution](https://www.quantum-espresso.org/) (QE)[1,2] and the [`Koopmans`](https://koopmans-functionals.org/en/latest/) package. In particular you will learn how to set-up and run calculations using extended Hubbard and Koopmans functionals. 

In each subfolder you will find a file README.md with the basic instructions on how to run the exercises. A more detailed description of the content of the exercises is given in the PDF file containing the slides that the lecturers will present during the hands-on sessions. All the pseudopotential files needed to run the exercises can be found in the ```files``` folder.

For general calculations, SSSP pseudopotentials (PPs) files can be downloaded from the [Materials Cloud](https://www.materialscloud.org/discover/sssp/table/efficiency#sssp-license); other sites providing PPs are [pseudodojo](http://www.pseudo-dojo.org/), [SG15](http://www.quantum-simulation.org/potentials/sg15_oncv/) and the [Quantum ESPRESSO website](https://www.quantum-espresso.org/pseudopotentials).

All codes required to run the examples are already installed in the Quantum Mobile (see below), a virtual machine (VM) that can run on any Windows, Mac, or Linux laptop/desktop. Both the codes and Quantum Mobile are open source. 

# Using the Quantum Mobile Virtual Machine

The setup of the Quantum Mobile requires you to have the Hubbard-Koopmans virtual appliance (privided by the organizers) and the open-source Virtual Box (VBox) virtualizaton software. In order to import the image inside VBox, please refer to [this documentation](https://docs.oracle.com/cd/E26217_01/E26796/html/qs-import-vm.html).

NOTE: If you are running this tutorial on a laptop, beware that some manufacturers disable the Virtualization technology at the BIOS level. This feature can be reactivated, but we would advise against doing it yourself unless you know exactly what you are doing, and it might be wiser to install Quantum ESPRESSO natively on your machine - for this, [see instructions](https://www.quantum-espresso.org/Doc/user_guide.pdf)

# Exercises

 - [Day1](Day1/README.md): Using Hybrids and meta-GGA to compute the band gap of bulk silicon and magnetic moment of bulk iron, and generation of maximally localized Wannier functions using WANNIER90.
 - [Day2](Day2/README.md): Calculation of the electronic structure of transition-metal oxides using extended Hubbard functionals (DFT+U and DFT+U+V), and calculation of Hubbard parameters using the HP code.
 - [Day3](Day3/README.md): Using `kcp.x`, 'kcw.x`, and `koopmans` to compute the electronic structure of finite and extended systems with Koopmans spectral functionals.

## Bibliography
1. P. Giannozzi, S. Baroni, N. Bonini, M. Calandra, R. Car, C. Cavazzoni, D. Ceresoli, G. L. Chiarotti, M. Cococcioni, I. Dabo, et al., Journal of physics: Condensed matter 21, 395502 (2009).
2. P. Giannozzi, O. Andreussi, T. Brumme, O. Bunau, M. B. Nardelli, M. Calandra, R. Car, C. Cavazzoni, D. Ceresoli, M. Cococcioni, et al., Journal of Physics: Condensed Matter 29, 465901 (2017).
