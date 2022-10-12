set size square 
set xlab "Exp. [eV]"
set ylab "Theo. [eV]"
set key bottom
pl [6:26][6:26] x notit lc rgb 'black', 'BE.dat' u 2:4 w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 3:4 tit 'KI' w p pt 7 lc rgb 'red'
pause -1 
set ylab "Error [eV]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 4:($2-$4) w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 4:($3-$4) tit 'KI' w p pt 7 lc rgb 'red'
pause -1

set ylab "Error [%]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 4:($2/$4-1)*100 w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 4:($3/$4-1)*100 tit 'KI' w p pt 7 lc rgb 'red'
pause -1
