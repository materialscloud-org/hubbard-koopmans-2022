# Run the calculations in the following way:

pw.x < CoO.scf.in |tee CoO.scf.out

pw.x < CoO.nscf.in |tee CoO.nscf.out

projwfc.x < CoO.projwfc.in |tee CoO.projwfc.out

gnuplot plot_pdos.gp

evince CoO_PDOS.eps
