set size square 
set xlab "Exp. [eV]"
set ylab "Theo. [eV]"
set key bottom
pl [6:26][6:26] x notit lc rgb 'black', 'BE.dat' u 2:5 w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 4:5 tit 'KI kcw' w p pt 5 lc rgb 'orange', '' u 3:5 tit 'KI kcp' w p pt 7 lc rgb 'red'
pause -1 
set ylab "Error [eV]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 5:($2-$5) w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 5:($3-$5) tit 'KI kcp' w p pt 7 lc rgb 'red', '' u 5:($4-$5) tit 'KI kcw' w p pt 7 lc rgb 'orange',
pause -1

set ylab "Error [%]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 5:($2/$5-1)*100 w p pt 9 lc rgb 'blue' tit 'DFT[PBE]', '' u 5:($3/$5-1)*100 tit 'KI kcw' w p pt 7 lc rgb 'red', '' u 5:($4/$5-1)*100 tit 'KI kcp' w p pt 7 lc rgb 'orange'
pause -1
