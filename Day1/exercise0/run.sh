printf "PWSCF   ..."
pw.x -in Si.scf.in > Si.scf.out
echo " done"
printf "PWbands ..."
pw.x -in Si.bands.in > Si.bands.out
echo " done"
printf "BANDS   ..."
bands.x -in bands.in > bands.out
echo " done"

