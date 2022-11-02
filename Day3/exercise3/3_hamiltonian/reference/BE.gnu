#!/usr/bin/gnuplot

set term pngcairo enha font "Helvetica, 26" size 900,900
set grid

set out "BE.png"
set xlab "Exp. [eV]"
set ylab "Theo. [eV]"
set key bottom
pl [5:25][5:25] x notit lw 2 lc rgb 'black',\
   'BE.dat' u 1:4 w p pt 9 ps 2 lc rgb 'blue'   tit 'DFT[PBE]',\
   ''       u 2:4 w p pt 5 ps 2 lc rgb 'orange' tit 'KI kcw',\
   ''       u 3:4 w p pt 7 ps 2 lc rgb 'red'    tit 'KI kcp'

set boxwidth 0.25
set style fill solid
set key top right

set out "BE_AE.png"
set ylab "Absolute Error [eV]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 4:(abs($1-$4)) w boxes lc rgb 'blue' tit 'DFT[PBE]',\
        ''       u 4:(abs($2-$4)) w boxes lc rgb 'orange' tit 'KI kcw',\
        ''       u 4:(abs($3-$4)) w boxes lc rgb 'red' tit 'KI kcp'

set out "BE_RE.png"
set ylab "Relative Error [%]"
set xlab "Exp. energy [eV]"
pl [][] 'BE.dat' u 4:(abs($1/$4-1))*100 w boxes lc rgb 'blue' tit 'DFT[PBE]',\
        ''       u 4:(abs($2/$4-1))*100 w boxes lc rgb 'orange' tit 'KI kcw',\
        ''       u 4:(abs($3/$4-1))*100 w boxes lc rgb 'red' tit 'KI kcp'
