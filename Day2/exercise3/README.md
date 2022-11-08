# Run the calculations in the following way:

pw.x < CrO.scf.in |tee CrO.scf.out

pw.x < CrO.bands.in |tee CrO.bands.out

bands.x < CrO.bands.pp.in |tee CrO.bands.pp.out

plotband.x < CrO.plotband.in |tee CrO.plotband.out

evince CrO_bands.ps
