# Run the calculations in the following way:

pw.x < Si.scf.in | tee Si.scf.out

pw.x < Si.bands.in | tee Si.bands.out

bands.x < bands.in | tee bands.out

gnuplot plot_bands.gnu 
