set terminal post eps enhanced solid color "Helvetica" 20 
set arrow from 0, 0 to 0, 5.6 nohead
set output "ZnO_PDOS.eps" 
set xrange [-12:8] 
set yrange [0:6.5] 
set xtics -12, 2, 8 
set ytics   0, 1, 7
set xlabel "E - E_F (eV)" 
set ylabel "PDOS (states/eV/atom)" 
plot "ZnO.pdos_atm#1(Zn)_wfc#3(d)" u ($1-9.2869):($2) w l lw 2 lt rgb "red"   title 'Zn-3d', \
     "ZnO.pdos_atm#3(O)_wfc#2(p)"  u ($1-9.2869):($2) w l lw 2 lt rgb "blue"  title ' O-2p'
