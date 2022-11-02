grep "KI\[Full\]" kc.kho | sed -e "s/KI\[Full\]//g" | xargs -n 1  | awk '{print -$1}' | head -9 > kcw.dat
grep "KS " kc.kho | head -2 | sed -e "s/KS//g" | xargs -n 1  | awk '{print -$1}' | head -9 > dft.dat
grep -A 2 "  Eigenvalues (eV), kp =   1 , spin =  1" ../../../exercise1/reference/final/ki_final.cpo | tail -1 | xargs -n 1  | awk '{print -$1}' | head -9 > kcp.dat
paste dft.dat kcw.dat kcp.dat BE_exp.dat | head -10 | awk '{print $1, $2, $3, $4}' > BE.dat
rm dft.dat kcw.dat kcp.dat
