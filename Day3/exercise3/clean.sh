#!/bin/bash

rm -frv out 
cd 1_init
rm -frv  dft.pwo  dos.out  kc.dos  kc.w2ko
cd ../
cd 2_screening
rm -frv kc.kso
cd ..
cd 3_hamiltonian
rm -frv kc_kcw.dos  kc.kcw_hr.dat  kc.kcw_hr_emp.dat  kc.kcw_hr_occ.dat  kc.kho dos.out BE.dat *png
cd ..

