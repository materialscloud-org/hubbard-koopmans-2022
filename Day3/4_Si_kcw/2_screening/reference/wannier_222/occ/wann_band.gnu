set style data dots
set nokey
set xrange [0: 4.30091]
set yrange [ -6.91673 :  7.05452]
set arrow from  1.00200,  -6.91673 to  1.00200,   7.05452 nohead
set arrow from  2.15902,  -6.91673 to  2.15902,   7.05452 nohead
set arrow from  3.07371,  -6.91673 to  3.07371,   7.05452 nohead
set xtics ("L"  0.00000,"G"  1.00200,"X"  2.15902,"K"  3.07371,"G"  4.30091)
 plot "wann_band.dat"
