for ecut in 20 30 40 50 60 70 80; do 

cat > Si.scf_ecut$ecut.in << EOF
 &control
    calculation='scf'
    prefix='Si'
    pseudo_dir = '../../../../files/pseudo'
    outdir='./out'
    tprnfor = .true.
    tstress = .true. 
 /
 &system
    ibrav = 2, 
    celldm(1) = 10.20, 
    nat = 2, 
    ntyp = 1,
    ecutwfc = $ecut, 
    nbnd = 5
 /
 &electrons
    conv_thr = 1.d-12
 /
ATOMIC_SPECIES
Si 28.086  Si.pbe_PseudoDojo.UPF

ATOMIC_POSITIONS {alat}
 Si 0.00 0.00 0.00
 Si 0.25 0.25 0.25

K_POINTS {automatic}
12 12 12 0 0 0
EOF

printf "Running ecut = $ecut ... "
mpirun -np 4 pw.x -in Si.scf_ecut$ecut.in > Si.scf_ecut$ecut.out 
echo " done"

done 
