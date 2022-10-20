set tit "Etot"
set key left 
pl 'res.dat' u (1/$1):2 w lp tit '[q+g=0] = 0', '' u (1/$1):3 w lp tit 'GB', '' u (1/$1):4 w lp tit 'GB extr'
pause -1 

set tit "Gap @ GAMMA"
pl 'res.dat' u (1/$1):5 w lp tit '[q+g=0] = 0', '' u (1/$1):6 w lp tit 'GB', '' u (1/$1):7 w lp tit 'GB extr'
pause -1 

