set terminal post eps enhanced solid color "Helvetica" 20 
set output "ZnO_dft_bands.eps" 

ymin=-7
ymax=18

set xrange [0: 3.7173]
set yrange [ ymin :  ymax]
set arrow from  0.8660,  ymin to  0.8660,   ymax nohead
set arrow from  1.8660,  ymin to  1.8660,   ymax nohead
set arrow from  2.6566,  ymin to  2.6566,   ymax nohead
set xtics ("L"  0.00000,"{/Symbol G}"  0.8660,"X"  1.8660,"K"  2.6566,"{/Symbol G}"  3.7173)
plot  'dft_bands.gnu' u 1:2 w l lw 2 lc rgb 'black' tit 'DFT PWscf'
