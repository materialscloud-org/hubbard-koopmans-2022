sh link_wann.sh

kcw.x -in kc.khi > kc.kho
#dos.x -in dos.in > dos.out
echo "  KCW hamiltonian done"

projwfc.x -in projwfc.in > projwfc.out 
echo "  PDOS           done"
