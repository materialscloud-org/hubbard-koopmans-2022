cd 1_wannier
pw.x -in scf.pwi > scf.pwo
echo "  DFT scf         done"
pw.x -in nscf.pwi > nscf.pwo
echo "  DFT nscf        done"
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
echo "  Wann OCC        done"
cd ../

rm -fr wann_*
ln -s occ/wann_u.mat wann_u.mat
ln -s occ/wann_centres.xyz wann_centres.xyz
ln -s emp/wann_u.mat wann_emp_u.mat
ln -s emp/wann_u_dis.mat wann_emp_u_dis.mat
ln -s emp/wann_centres.xyz wann_emp_centres.xyz

kcw.x -in kc.w2ki > kc.w2ko
echo "  KCW interface   done"
cd ../

cd 3_hamiltonian
rm -fr wann_*
ln -s ../1_wannier/occ/wann_u.mat wann_u.mat
ln -s ../1_wannier/occ/wann_centres.xyz wann_centres.xyz
ln -s ../1_wannier/emp/wann_u.mat wann_emp_u.mat
ln -s ../1_wannier/emp/wann_u_dis.mat wann_emp_u_dis.mat
ln -s ../1_wannier/emp/wann_centres.xyz wann_emp_centres.xyz

kcw.x -in kc.khi > kc.kho
#dos.x -in dos.in > dos.out
echo "  KCW hamiltonian done"
cd ..

