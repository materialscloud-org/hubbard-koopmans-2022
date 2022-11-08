#!/usr/bin/gnuplot

set terminal pngcairo enhanced solid color font "Helvetica, 20" size 1200,900
set output "Si_ki_bands.png" 

ymin=-14
ymax=8

set key hor out 

set xrange [0: 4.30091]
set yrange [ ymin :  ymax]
set arrow from  1.00200,  ymin to  1.00200,   ymax nohead
set arrow from  2.15902,  ymin to  2.15902,   ymax nohead
set arrow from  3.07371,  ymin to  3.07371,   ymax nohead
set xtics ("L"  0.00000,"{/Symbol G}"  1.00200,"X"  2.15902,"K"  3.07371,"{/Symbol G}"  4.30091)
fact=2*pi/(10.262200042863787*0.529177)
plot "wann_band.dat" u 1:($2-6.0546) w l lc rgb 'red' tit 'KI W90',\
     '../../0_dft/reference/dft_bands.gnu' u ($1*fact):($2-6.0546) w l lc rgb 'black' tit 'LDA PWscf'#,\
#     '../si.kcw_bands.dat' u ($1*fact):($2-6.0546) w l lc rgb 'green' tit 'KI '
