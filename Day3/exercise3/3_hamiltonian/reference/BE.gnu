#!/usr/bin/gnuplot

set size square
set grid

set xlab "Exp. [eV]"
set ylab "Theo. [eV]"
set key bottom
pl [5:25][5:25] x notit lc rgb 'black', 'BE.dat' u 1:4 w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 2:4 tit 'KI kcw' w p pt 5 lc rgb 'orange', '' u 3:4 tit 'KI kcp' w p pt 7 lc rgb 'red'

set boxwidth 0.25
set style fill solid
set key top right

pause -1
set ylab "Absolute Error [eV]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 4:(abs($1-$4)) w boxes lc rgb 'blue' tit 'DFT[PBE]', '' u 4:(abs($2-$4)) tit 'KI kcw' w boxes lc rgb 'orange', '' u 4:(abs($3-$4)) tit 'KI kcp' w boxes lc rgb 'red'

pause -1
set ylab "Relative Error [%]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 4:(abs($1/$4-1))*100 w boxes lc rgb 'blue' tit 'DFT[PBE]', '' u 4:(abs($2/$4-1))*100 tit 'KI kcw' w boxes lc rgb 'orange', '' u 4:(abs($3/$4-1))*100 tit 'KI kcp' w boxes lc rgb 'red'
pause -1
