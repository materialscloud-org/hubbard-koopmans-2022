set term pngcairo enha font "Helvetica, 24" size 1400,900
set out "res_nk_gapG.png" 
set ylab "Band Gap at  {/Symbol G} [eV]"
set xlab "nk1=nk2=nk3"
set label 1 at 8, 2.44 "ecut = 40 Ry"
pl 'res.dat' u 1:8 w l lw 2 lc rgb 'black' notit, '' u 1:8 w p pt 7 ps 2 lc rgb 'red' notit

set out "res_nk_gap.png" 
set ylab "Band Gap [eV]"
set xlab "nk1=nk2=nk3"
set label 1 at 8, 0.6 "ecut = 40 Ry"
pl 'res.dat' u 1:4 w l lw 2 lc rgb 'black' notit, '' u 1:4 w p pt 7 ps 2 lc rgb 'red' notit

set out "res_nk_etot.png" 
set ylab "Energy [Ry]"
set xlab "nk1=nk2=nk3"
set label 1 at 8, -16.88 "ecut = 40 Ry"
pl 'res.dat' u 1:5 w l lw 2 lc rgb 'black' notit, '' u 1:5 w p pt 7 ps 2 lc rgb 'red' notit
