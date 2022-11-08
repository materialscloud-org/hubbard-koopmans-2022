#!/usr/bin/gnuplot

set terminal pngcairo enhanced solid color font "Helvetica, 24" size 1400,900 
set output "ZnO_ki_PDOS.png"

set arrow from 0, 0 to 0, 8 nohead
set xrange [-12:8] 
set yrange [0:8] 
set xtics -12, 2, 4
set ytics   ("0" 0, "1" 1, "2" 2, "3" 3, "0" 4, "1" 5, "2" 6, "3" 7, "4" 8)
set xlabel "E - E_F (eV)" 
set ylabel "PDOS (states/eV/atom)" 
set label 1 "LDA" at -11,7
set label 2 "KI" at -11,3
set arrow from 0.6893,4.7 to 0.6893, 4.2 lw 2 
set arrow from 3.44,0.7 to 3.44, 0.2 lw 2 

plot "ZnO.pdos_atm#1(Zn)_wfc#3(d)" u ($1-7.3254):($2+0) w l lw 2 lt rgb "red"   title 'Zn-3d', \
     "ZnO.pdos_atm#3(O)_wfc#2(p)"  u ($1-7.3254):($2+0) w l lw 2 lt rgb "blue"  title ' O-2p',\
     "ZnO.pdos_atm#1(Zn)_wfc#4(s)" u ($1-7.3254):($2*3+0) w l lw 2 lt rgb "orange"   title 'Zn-4s (x3)',\
     "../../1_wannier/reference/ZnO.pdos_atm#1(Zn)_wfc#3(d)" u ($1-9.2869):($2+4) w l lw 2 lt rgb "red"   notitle,\
     "../../1_wannier/reference/ZnO.pdos_atm#3(O)_wfc#2(p)"  u ($1-9.2869):($2+4) w l lw 2 lt rgb "blue"  notitle,\
     "../../1_wannier/reference/ZnO.pdos_atm#1(Zn)_wfc#4(s)" u ($1-9.2869):($2*3+4) w l lw 2 lt rgb "orange"   notitle,\
     4 w l lc rgb 'black' notit

