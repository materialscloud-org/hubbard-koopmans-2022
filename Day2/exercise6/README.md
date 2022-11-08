# Run the calculations in the following way:

Band structure calculation:

pw.x < MnO.scf.in |tee MnO.scf.out

pw.x < MnO.bands.in |tee MnO.bands.out

bands.x < MnO.bands.pp.in |tee MnO.bands.pp.out

plotband.x < MnO.plotband.in |tee MnO.plotband.out

evince MnO_bands.ps


Calculation of Hubbard U and V:

pw.x < MnO.scf.UV.in |tee MnO.scf.UV.out

hp.x < MnO.hp.in |tee MnO.hp.out

