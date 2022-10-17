set style data dots
set nokey
set xrange [0: 4.30091]
set yrange [ -7.73207 : 17.13388]
set arrow from  1.00200,  -7.73207 to  1.00200,  17.13388 nohead
set arrow from  2.15902,  -7.73207 to  2.15902,  17.13388 nohead
set arrow from  3.07371,  -7.73207 to  3.07371,  17.13388 nohead
set xtics ("L"  0.00000,"G"  1.00200,"X"  2.15902,"K"  3.07371,"G"  4.30091)
 plot "wann_band.dat"
