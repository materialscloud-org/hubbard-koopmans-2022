grep "KI\[Full\]" kc.kho | sed -e "s/KI\[Full\]//g" | xargs -n 1  | awk '{print -NR+10, -$1}' | head -9 > ki.dat
grep "KS " kc.kho | head -2 | sed -e "s/KS//g" | xargs -n 1  | awk '{print -NR+10, -$1}' | head -9 > dft.dat
paste dft.dat ki.dat BE_exp.dat | head -10 | awk '{print $1, $2, $4,$6}' > BE.dat
rm dft.dat ki.dat
