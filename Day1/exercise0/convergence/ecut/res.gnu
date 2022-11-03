set term pngcairo enha font "Helvetica, 24" size 1400,900
set out "res_ecut_gap.png" 
set ylab "Band Gap [eV]"
set xlab "E_{cut} [Ry]"
set label 1 at 50, 0.5715 "k mesh 12x12x12"
pl 'res.dat' u 1:4 w l lw 2 lc rgb 'black' notit, '' u 1:4 w p pt 7 ps 2 lc rgb 'red' notit

set out "res_ecut_gapG.png" 
set ylab "Band Gap at {/Symbol G} [eV]"
set xlab "E_{cut} [Ry]"
set label 1 at 50, 2.555 "k mesh 12x12x12"
pl 'res.dat' u 1:8 w l lw 2 lc rgb 'black' notit, '' u 1:8 w p pt 7 ps 2 lc rgb 'red' notit

set out "res_ecut_etot.png" 
set ylab "Energy [Ry]"
set xlab "E_{cut} [Ry]"
set label 1 at 50, -16.923 "k mesh 12x12x12"
pl 'res.dat' u 1:5 w l lw 2 lc rgb 'black' notit, '' u 1:5 w p pt 7 ps 2 lc rgb 'red' notit
