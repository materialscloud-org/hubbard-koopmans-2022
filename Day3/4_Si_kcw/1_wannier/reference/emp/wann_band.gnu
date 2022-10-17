set style data dots
set nokey
set xrange [0: 4.30091]
set yrange [  5.21487 : 17.03059]
set arrow from  1.00200,   5.21487 to  1.00200,  17.03059 nohead
set arrow from  2.15902,   5.21487 to  2.15902,  17.03059 nohead
set arrow from  3.07371,   5.21487 to  3.07371,  17.03059 nohead
set xtics ("L"  0.00000,"G"  1.00200,"X"  2.15902,"K"  3.07371,"G"  4.30091)
 plot "wann_band.dat"
