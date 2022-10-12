for nq in 1 2 3 6; do 
echo " RUNNING q mesh = $nq, $nq ,$nq"

cat > Si.scf.in <<EOF 
&CONTROL
   calculation      = 'scf'
   verbosity        = 'high'
   outdir           = './out'
   pseudo_dir       = '../../files/pseudo/'
   prefix           = 'si'
/
&SYSTEM
   ibrav            = 2
   celldm(1)        = 10.262200042863787
   ecutwfc          = 20.0
   nspin            = 1
   ntyp             = 1
   nat              = 2
   nbnd             = 5
   !
   input_dft        = "hse"
   nqx1             = $nq
   nqx2             = $nq
   nqx3             = $nq
   exxdiv_treatment = "none"
   x_gamma_extrapolation = .false.
   ecutfock         = 20
/
&ELECTRONS
   adaptive_thr     = .true.
   conv_thr         = 1.6e-08
/

ATOMIC_SPECIES
Si  28.085 Si_ONCV_PBE-1.2.upf

K_POINTS automatic
6 6 6  0 0 0

ATOMIC_POSITIONS crystal
Si  -0.0000000000 0.0000000000 -0.0000000000
Si  0.2500000000 0.2500000000 0.2500000000
EOF

pw.x -in Si.scf.in > Si.scf_nq${nq}.out 

done 
