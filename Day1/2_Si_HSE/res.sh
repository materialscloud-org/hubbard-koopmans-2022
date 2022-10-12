for nq in 1 2 3 6; do 

etot=`grep ! Si.scf_nq${nq}.out | tail -1 | awk '{print $5}'`
vbmG=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}.out | tail -1 | awk '{print $4}'`
cbmG=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}.out | tail -1 | awk '{print $5}'`
gapG=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}.out | tail -1 | awk '{print $5-$4}'`

etot_GB=`grep ! Si.scf_nq${nq}_GB.out | tail -1 | awk '{print $5}'`
vbmG_GB=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}_GB.out | tail -1 | awk '{print $4}'`
cbmG_GB=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}_GB.out | tail -1 | awk '{print $5}'`
gapG_GB=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}_GB.out | tail -1 | awk '{print $5-$4}'`

etot_GB_x=`grep ! Si.scf_nq${nq}_GB_x.out | tail -1 | awk '{print $5}'`
vbmG_GB_x=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}_GB_x.out | tail -1 | awk '{print $4}'`
cbmG_GB_x=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}_GB_x.out | tail -1 | awk '{print $5}'`
gapG_GB_x=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nq${nq}_GB_x.out | tail -1 | awk '{print $5-$4}'`

echo $nq $etot $etot_GB $etot_GB_x "   " $gapG $gapG_GB $gapG_GB_x

done 
