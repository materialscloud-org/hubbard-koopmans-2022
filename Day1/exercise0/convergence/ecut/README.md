# Run a convergence test for the cutoff energy:

Modify the Si.scf.in file by changing the ecutwcf input parameter.
Run few simulations for ecut = 20, 30, 40 ,50 ,60 ,70 ,80

pw.x < Si.scf.in | tee Si.scf_ecut$ecut.out

To speed up the precedure you can also use the script run_conv.sh: ./run_conv.sh  

Collect the relevant informations (total energy, direct and indirect band gaps): ./res.sh 

Plot the results: gnuplot res.gnu 
