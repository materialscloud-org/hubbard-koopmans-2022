set terminal post eps enhanced solid color "Helvetica" 20 
set output "Si_ki_bands.eps" 

ymin=-14
ymax=8

set key hor out 
set xrange [0: 3.7173]
set yrange [ ymin :  ymax]
set arrow from  0.8660,  ymin to  0.8660,   ymax nohead
set arrow from  1.8660,  ymin to  1.8660,   ymax nohead
set arrow from  2.6566,  ymin to  2.6566,   ymax nohead
set xtics ("L"  0.00000,"{/Symbol G}"  0.8660,"X"  1.8660,"K"  2.6566,"{/Symobl G}"  3.7173)
plot  '../../0_dft/reference/dft_bands.gnu' u 1:($2-6.0546) w l lw 2 lc rgb 'black' tit 'LDA',\
      'si.kcw_bands.dat' u 1:($2-6.0546) w l lw 2 lc rgb 'red' tit 'KI'
