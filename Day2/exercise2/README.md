# Run the calculations in the following way:

pw.x < FeO.scf.in |tee FeO.scf.out

pw.x < FeO.nscf.in |tee FeO.nscf.out

projwfc.x < FeO.projwfc.in |tee FeO.projwfc.out

gnuplot plot_pdos.gp

evince FeO_PDOS.eps
