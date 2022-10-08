#/bin/bash

./link_wann.sh 
kcw.x -in kc.khi > kc.kho
echo "  KCW Hamiltonian  DONE"

cd wannier_post 
wannier90.x -pp wann
pw2wannier90.x -in pw2wan.p2wi > pw2wan.p2wo
wannier90.x wann
echo "  WANN90 PostProc  DONE"
