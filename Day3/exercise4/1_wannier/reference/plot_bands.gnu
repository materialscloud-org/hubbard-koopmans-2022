set terminal post eps enhanced solid color "Helvetica" 20 
set output "Si_wann_bands.eps" 

ymin=-12
ymax=8
vbm=6.0546

set xrange [0: 4.30091]
set yrange [ ymin :  ymax]
set arrow from  1.00200,  ymin to  1.00200,   ymax nohead
set arrow from  2.15902,  ymin to  2.15902,   ymax nohead
set arrow from  3.07371,  ymin to  3.07371,   ymax nohead
set xtics ("L"  0.00000,"{/Symbol G}"  1.00200,"X"  2.15902,"K"  3.07371,"{/Symbol G}"  4.30091)

fact=2*pi/(10.262200042863787*0.529177)

set key hor out
plot "occ/wann_band.dat" u 1:($2-vbm) w l lc rgb 'red' tit 'DFT W90', "emp/wann_band.dat" u 1:($2-vbm) w l lc rgb 'red' notit,\
     '../../0_dft/reference/dft_bands.gnu' u ($1*fact):($2-vbm)  w l lc rgb 'black' tit 'DFT PWscf'
