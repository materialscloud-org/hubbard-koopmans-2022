#!/usr/bin/gnuplot

set terminal pngcairo enhanced solid color font "Helvetica, 24" size 1400,900 
set output "ZnO_PDOS.png"

set xrange [-8:4] 
set yrange [0:4.0] 
set xtics -8, 2, 4
set ytics   0, 1, 4
set xlabel "E - E_F (eV)" 
set arrow from 0.6893,0.7 to 0.6893, 0.2 lw 2 
set arrow nohead from 0,0 to 0,4.0 lw 2 lc rgb 'black'
set ylabel "PDOS (states/eV/atom)" 
plot "ZnO.pdos_atm#1(Zn)_wfc#3(d)" u ($1-9.2869):($2) w l lw 2 lt rgb "red"   title 'Zn-3d', \
     "ZnO.pdos_atm#3(O)_wfc#2(p)"  u ($1-9.2869):($2) w l lw 2 lt rgb "blue"  title ' O-2p',\
     "ZnO.pdos_atm#1(Zn)_wfc#4(s)" u ($1-7.3254):($2*3+0) w l lw 2 lt rgb "orange"   title 'Zn-4s (x3)'
