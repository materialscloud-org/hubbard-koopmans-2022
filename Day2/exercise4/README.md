# Run the calculations in the following way:

pw.x < Si.scf.in |tee Si.scf.out

pw.x < Si.bands.in |tee Si.bands.out

bands.x < Si.bands.pp.in |tee Si.bands.pp.out

plotband.x < Si.plotband.in |tee Si.plotband.out

evince Si_bands.ps
