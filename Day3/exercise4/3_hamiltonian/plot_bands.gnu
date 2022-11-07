#!/usr/bin/gnuplot

set terminal pngcairo enhanced solid color font "Helvetica, 20" size 1200,900
set output "Si_ki_bands.png" 

ymin=-14
ymax=8

set xrange [0: 3.7173]
set yrange [ ymin :  ymax]
set arrow from  0.8660,  ymin to  0.8660,   ymax nohead
set arrow from  1.8660,  ymin to  1.8660,   ymax nohead
set arrow from  2.6566,  ymin to  2.6566,   ymax nohead
set xtics ("L"  0.00000,"{/Symbol G}"  0.8660,"X"  1.8660,"K"  2.6566,"{/Symbol G}"  3.7173)
plot  '../0_dft/dft_bands.gnu' u 1:($2-6.054) w l lw 2 lc rgb 'black' tit 'LDA',\
      'si.kcw_bands.dat' u 1:($2-6.054) w l lw 2 lc rgb 'red' tit 'KI'
