for nk in 2 3 4 5 6 7 8 10 12; do 

cat > Si.scf.in << EOF
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
    celldm(1) = 10.262, 
    nat = 2, 
    ntyp = 1,
    ecutwfc = 40, 
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
 $nk $nk $nk 0 0 0
EOF

printf "Running nk= $nk $nk $nk ... "
pw.x -in Si.scf.in > Si.scf_nk$nk.out 
echo " done" 

done 
