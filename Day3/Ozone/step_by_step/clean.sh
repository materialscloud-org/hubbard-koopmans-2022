rm -fr out 
cd 1_init
rm -fr  dft.pwo  dos.out  kc.dos  kc.w2ko
cd ../
cd 2_screening
rm -fr kc.kso
cd ..
cd 3_hamiltonian
rm -fr kc_kcw.dos  kc.kcw_hr.dat  kc.kcw_hr_emp.dat  kc.kcw_hr_occ.dat  kc.kho dos.out BE.dat
cd ..

