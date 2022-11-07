#!/bin/bash

printf "  DFT             ..."
cd 1_init
pw.x -in dft.pwi > dft.pwo
echo   "  done"
printf "  KCW interface   ..."
kcw.x -in kc.w2ki > kc.w2ko
echo   "  done"
cd ../
cd 2_screening
printf "  KCW screening   ..."
kcw.x -in kc.ksi > kc.kso
echo "  done"
cd ..
cd 3_hamiltonian
printf "  KCW hamiltonian ..."
kcw.x -in kc.khi > kc.kho
echo "  done"
cd ..

