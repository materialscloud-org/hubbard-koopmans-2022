set terminal post eps enhanced solid color "Helvetica" 20 
set arrow from 0, 0 to 0, 5.6 nohead
set output "CoO_PDOS.eps" 
set xrange [-10:8] 
set yrange [0:6.5] 
set xtics -10, 2, 8 
set ytics   0, 1, 7
set xlabel "E - E_F (eV)" 
set ylabel "PDOS (states/eV/atom)" 
plot "CoO.pdos_atm#1(Co1)_wfc#3(d)" u ($1-13.7538):($2) w l lw 2 lt rgb "red"   title 'Co-3d (majority spin)', \
     "CoO.pdos_atm#2(Co2)_wfc#3(d)" u ($1-13.7538):($2) w l lw 2 lt rgb "green" title 'Co-3d (minority spin)', \
     "CoO.pdos_atm#3(O)_wfc#2(p)"   u ($1-13.7538):($2) w l lw 2 lt rgb "blue"  title ' O-2p'
