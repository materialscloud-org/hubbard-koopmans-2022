set terminal post eps enhanced solid color "Helvetica" 20 
set output "ZnO_dft_bands.eps" 

ymin=-10
ymax=10

set xrange [0: 2.7577]
set yrange [ ymin :  ymax]

set key hor out 
set ylab "E[eV]"

set arrow from  0.5774,  ymin to  0.5774,   ymax nohead
set arrow from  0.8895,  ymin to  0.8895,   ymax nohead
set arrow from  1.4668,  ymin to  1.4668,   ymax nohead
set arrow from  1.7789,  ymin to  1.7789,   ymax nohead
set arrow from  2.4456,  ymin to  2.4456,   ymax nohead

set xtics ("A"  0.00000, "L"  0.5774, "M"  0.8895, "{/Symbol G}"  1.4668, "A"  1.7789, "H" 2.4456, "{/Symbol G}" 2.7577)
plot 'dft_bands.gnu' u 1:($2-9.2869) w l lw 2 lc rgb 'black' tit 'DFT PWscf'