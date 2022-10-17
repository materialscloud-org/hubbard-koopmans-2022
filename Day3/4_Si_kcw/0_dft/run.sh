pw.x -in scf.pwi > scf.pwo
echo " PWscf     done"
pw.x -in bands.pwi > bands.pwo
echo " PWbands   done"
bands.x -in bands.in > bands.out
echo " BANDS     done"

#gnuplot plot_bands.gnu
