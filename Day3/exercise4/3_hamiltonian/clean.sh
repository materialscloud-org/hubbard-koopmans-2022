#!/bin/bash

rm -frv si_kcw.dos  si.kcw_hr.dat  si.kcw_hr_emp.dat  si.kcw_hr_occ.dat  si.kho dos.out wann_centres.xyz  wann_emp_centres.xyz  wann_emp_u_dis.mat  wann_emp_u.mat  wann_u.mat si.kcw_bands.dat CRASH kc.kho *png
cd wannier_post
rm -frv pw2wan.p2wo wann.werr wann_band.dat wann_band.kpt wann_centres.xyz  wann.eig wann.mmn wann_u.mat  wann.wout wann.amn wann_band.gnu wann_band.labelinfo.dat wann.chk wann_hr.dat wann.nnkp wann_wsvec.dat wann_u_dis.mat CRASH *png UNK* *xsf
cd ../

