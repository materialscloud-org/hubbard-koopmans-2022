grep -A 2 "  Eigenvalues (eV), kp =   1 , spin =  1" final/ki_final.cpo | tail -1 | xargs -n 1  | awk '{print -$1}' | head -9 > ki.dat
grep -A 2 "  Eigenvalues (eV), kp =   1 , spin =  1" init/dft_init_nspin2.cpo | tail -1 | xargs -n 1  | awk '{print -$1}' | head -9 > dft.dat
paste dft.dat ki.dat BE_exp.dat | head -10 | awk '{print $1, $2, $3}' > BE.dat
rm dft.dat ki.dat
