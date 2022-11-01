# Run a convergence test for the k-points mesh:

Modify the Si.scf.in file by changing the k_POINTS card.
Run few simulations for nk1=nk2=nk3 = 2, 3, 4, 5, 6, 7, 8, 10, 12

pw.x < Si.scf.in | tee Si.scf_nk$nk.out

To speed up the precedure you can also use the script run_conv.sh: ./run_conv.sh  

Collect the relevant informations (total energy, direct and indirect band gaps): ./res.sh 

Plot the results: gnuplot res.gnu 
