pw.x -in scf.pwi > scf.pwo
echo "  DFT scf         done"
pw.x -in nscf.pwi > nscf.pwo
echo "  DFT nscf        done"
projwfc.x -in projwfc.in > projwfc.out 
echo "  PDOS           done"
cd occ
wannier90.x -pp wann
pw2wannier90.x -in pw2wan.p2wi > pw2wan.p2wo
wannier90.x wann
echo "  Wann OCC        done"
cd ../
cd emp
wannier90.x -pp wann
pw2wannier90.x -in pw2wan.p2wi > pw2wan.p2wo
wannier90.x wann
echo "  Wann EMP        done"
cd ../

sh link_wann.sh 

kcw.x -in kc.w2ki > kc.w2ko
echo "  KCW interface   done"

