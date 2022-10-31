#!/usr/bin/gnuplot

set terminal post eps enhanced solid color "Helvetica" 20 
set output "Si_dft_bands.eps" 

ymin=-12
ymax=8

set xrange [0: 3.7173]
set yrange [ ymin :  ymax]
set arrow from  0.8660,  ymin to  0.8660,   ymax nohead
set arrow from  1.8660,  ymin to  1.8660,   ymax nohead
set arrow from  2.6566,  ymin to  2.6566,   ymax nohead
set xtics ("L"  0.00000,"{/Symbol G}"  0.8660,"X"  1.8660,"K"  2.6566,"{/Symbol G}"  3.7173)
set ylab "E[eV]"
plot  'dft_bands.gnu' u 1:($2-6.0546) w l lw 2 lc rgb 'black' tit 'DFT PWscf'
