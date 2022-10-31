#!/bin/bash

cd 1_init
pw.x -in dft.pwi > dft.pwo
dos.x -in dos.in > dos.out
echo "  DFT             done"
kcw.x -in kc.w2ki > kc.w2ko
echo "  KCW interface   done"
cd ../
cd 2_screening
kcw.x -in kc.ksi > kc.kso
echo "  KCW screening   done"
cd ..
cd 3_hamiltonian
kcw.x -in kc.khi > kc.kho
dos.x -in dos.in > dos.out
echo "  KCW hamiltonian done"
cd ..

