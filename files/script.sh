#!/usr/bin/env bash

# Input data:
LISTA="10.5"      # List of values of lattice parameter to try
LISTECUT="20 30"  # List of plane-wave cutoffs to try
LISTK="2 4"       # List of number of k-points per dimension to try

# Files of interest:
TMP_DIR="./tmp"          # where temporary data will be stored
PSEUDO_DIR="./pseudo"    # where pseudopotentials are stored
OUT_DIR="./Test_script"  # where input and output will be
                           # created once the script runs.

PW_LAUNCH='pw.x'         # This is QE executable file.

# Security checks:
if [ ! -d $TMP_DIR ]; then
   mkdir $TMP_DIR
fi

if [ ! -d $OUT_DIR ]; then
   mkdir $OUT_DIR
fi

SAVE="SAVE.txt"

echo "#   a(bohr)  ecut (Ry)  num_kpt      E_tot (Ry)    F_x Na    F_y Na    F_z Na    F_x Cl    F_y Cl    F_z Cl (Ry/au)" >> $SAVE
# Start loops on plane-wave cutoffs, k-point grids, and lattice constants:
for ecut in $LISTECUT; do
   for k in $LISTK; do
      for a in $LISTA; do

      INPUT="NaCl.scf.a=$a.ecut=$ecut.k=$k.in"
      OUTPUT="NaCl.scf.a=$a.ecut=$ecut.k=$k.out"
      ecutdensity=$(( 8 * ecut ))
      echo 'Doing ecut, k, a: ' $ecut $k $a
      # Create new input file:
cat > $OUT_DIR/$INPUT << EOF
      &control
         calculation = 'scf'
         restart_mode = 'from_scratch'
         prefix = 'NaCl.$a.$ecut.$k'
         tstress = .true.
         tprnfor = .true.
         pseudo_dir = '$PSEUDO_DIR'
         outdir='$TMP_DIR'
      /
      &system
         ibrav = 2
         celldm(1) = $a
         nat = 2
         ntyp = 2
         ecutwfc = $ecut
         ecutrho = $ecutdensity
      /
      &electrons
         diagonalization = 'david'
         mixing_mode = 'plain'
         mixing_beta = 0.7
         conv_thr = 1.0d-8
      /
      ATOMIC_SPECIES
          Na  22.990    na_pbesol_v1.5.uspp.F.UPF
          Cl  35.446    cl_pbesol_v1.4.uspp.F.UPF
      ATOMIC_POSITIONS {alat} 
          Na 0.00 0.00 0.00
          Cl 0.50 0.00 0.00
      K_POINTS {automatic}
         $k $k $k  0 0 0
EOF

      # Run PWscf to create new output file:
      $PW_LAUNCH < $OUT_DIR/$INPUT > $OUT_DIR/$OUTPUT

      E_TOT=$(cat $OUT_DIR/$OUTPUT | grep ! | tr -dc '[0-9]\.\-\n')
      NKPT=$(cat $OUT_DIR/$OUTPUT | grep "number of k points=" | tr -dc '[0-9]\.\-\n')
      F1_x=$(cat $OUT_DIR/$OUTPUT | grep " atom    1 type  1   force" | cut -d= -f2 | tr -dc '[0-9]\.\-\n ' | tr -s ' ' | cut -d' ' -f2)
      F1_y=$(cat $OUT_DIR/$OUTPUT | grep " atom    1 type  1   force" | cut -d= -f2 | tr -dc '[0-9]\.\-\n ' | tr -s ' ' | cut -d' ' -f3)
      F1_z=$(cat $OUT_DIR/$OUTPUT | grep " atom    1 type  1   force" | cut -d= -f2 | tr -dc '[0-9]\.\-\n ' | tr -s ' ' | cut -d' ' -f4)
      F2_x=$(cat $OUT_DIR/$OUTPUT | grep " atom    2 type  2   force" | cut -d= -f2 | tr -dc '[0-9]\.\-\n ' | tr -s ' ' | cut -d' ' -f2)
      F2_y=$(cat $OUT_DIR/$OUTPUT | grep " atom    2 type  2   force" | cut -d= -f2 | tr -dc '[0-9]\.\-\n ' | tr -s ' ' | cut -d' ' -f3)
      F2_z=$(cat $OUT_DIR/$OUTPUT | grep " atom    2 type  2   force" | cut -d= -f2 | tr -dc '[0-9]\.\-\n ' | tr -s ' ' | cut -d' ' -f4)

      echo "`printf "%11.4f %10.1f %8d %15.6f %9.6f %9.6f %9.6f %9.6f %9.6f %9.6f" $a $ecut $NKPT $E_TOT $F1_z $F1_y $F1_z $F2_x $F2_y $F2_z`" >> $SAVE

      # Finish loops on plane-wave cutoffs, k-point grids, and lattice constants:
      done
   done
done

rm -r $TMP_DIR/*

echo -e "\n" >> $SAVE
