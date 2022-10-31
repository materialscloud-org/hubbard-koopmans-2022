set terminal post eps enhanced solid color "Helvetica" 20 
set arrow from 0, 0 to 0, 5.6 nohead
set output "FeO_PDOS.eps" 
set xrange [-10:8] 
set yrange [0:6.5] 
set xtics -10, 2, 8 
set ytics   0, 1, 7
set xlabel "E - E_F (eV)" 
set ylabel "PDOS (states/eV/atom)" 
plot "FeO.pdos_atm#1(Fe1)_wfc#5(d)" u ($1-16.1125):($2) w l lw 2 lt rgb "red"   title 'Fe-3d (majority spin)', \
     "FeO.pdos_atm#2(Fe2)_wfc#5(d)" u ($1-16.1125):($2) w l lw 2 lt rgb "green" title 'Fe-3d (minority spin)', \
     "FeO.pdos_atm#3(O)_wfc#2(p)"   u ($1-16.1125):($2) w l lw 2 lt rgb "blue"  title ' O-2p'
