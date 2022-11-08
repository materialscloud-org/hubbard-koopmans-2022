
printf "  KCW Hamiltonian ... "
./link_wann.sh 
kcw.x -in kc.khi > kc.kho
echo "  done"

printf "  PDOS            ... "
projwfc.x -in projwfc.in > projwfc.out 
echo "  done"
