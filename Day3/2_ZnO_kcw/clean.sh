rm -fr out 
cd 1_wannier
rm -fr  kc.w2ko  nscf.pwo  scf.pwo  wann_centres.xyz  wann_emp_centres.xyz  wann_emp_u_dis.mat  wann_emp_u.mat  wann_u.mat CRASH
cd occ
rm -fr pw2wan.p2wo wann.werr wann_band.dat wann_band.kpt wann_centres.xyz  wann.eig wann.mmn wann_u.mat  wann.wout wann.amn wann_band.gnu wann_band.labelinfo.dat wann.chk wann_hr.dat wann.nnkp wann_wsvec.dat CRASH
cd ../
cd emp
rm -fr pw2wan.p2wo wann.werr wann_band.dat wann_band.kpt wann_centres.xyz  wann.eig wann.mmn wann_u.mat  wann.wout wann.amn wann_band.gnu wann_band.labelinfo.dat wann.chk wann_hr.dat wann.nnkp wann_wsvec.dat wann_u_dis.mat CRASH
cd ../
cd ../
cd 3_hamiltonian
rm -fr kc_kcw.dos  kc.kcw_hr.dat  kc.kcw_hr_emp.dat  kc.kcw_hr_occ.dat  kc.kho dos.out wann_centres.xyz  wann_emp_centres.xyz  wann_emp_u_dis.mat  wann_emp_u.mat  wann_u.mat kc.kcw_bands.dat CRASH
cd ..

