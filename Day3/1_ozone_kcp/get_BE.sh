grep -A 2 "  Eigenvalues (eV), kp =   1 , spin =  1" final/ki_final.cpo | tail -1 | xargs -n 1  | awk '{print -NR+10, -$1}' | head -9 > ki.dat
grep -A 2 "  Eigenvalues (eV), kp =   1 , spin =  1" init/dft_init_nspin2.cpo | tail -1 | xargs -n 1  | awk '{print -NR+10, -$1}' | head -9 > dft.dat
grep "KI\[Full\]" ../1_ozone_kcw/3_hamiltonian/reference/kc.kho | sed -e "s/KI\[Full\]//g" | xargs -n 1  | awk '{print -NR+10, -$1}' | head -9 > ki_kcw.dat
paste dft.dat ki.dat ki_kcw.dat BE_exp.dat | head -10 | awk '{print $1, $2, $4, $6, $8}' > BE.dat
rm dft.dat ki.dat ki_kcw.dat
