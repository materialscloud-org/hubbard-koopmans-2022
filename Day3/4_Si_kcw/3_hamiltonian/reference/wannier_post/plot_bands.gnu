ymin=-7
ymax=18
set xrange [0: 4.30091]
set yrange [ ymin :  ymax]
set arrow from  1.00200,  ymin to  1.00200,   ymax nohead
set arrow from  2.15902,  ymin to  2.15902,   ymax nohead
set arrow from  3.07371,  ymin to  3.07371,   ymax nohead
set xtics ("L"  0.00000,"G"  1.00200,"X"  2.15902,"K"  3.07371,"G"  4.30091)
fact=2*pi/(10.262200042863787*0.529177)
plot "wann_band.dat" w l lc rgb 'red' tit 'KI W90',\
     '../../../0_dft/reference/dft_bands.gnu' u ($1*fact):2 w l lc rgb 'black' tit 'DFT PWscf'#,\
#     '../si.kcw_bands.dat' u ($1*fact):2 w l lc rgb 'green' tit 'KI '
pause -1
