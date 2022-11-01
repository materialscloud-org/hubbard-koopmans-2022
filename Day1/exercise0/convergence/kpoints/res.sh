rm -fr res.dat
for nk in 2 3 4 5 6 7 8 10 12; do 
echo $nk `grep highest Si.scf_nk$nk.out  | tail -1 | awk '{print $7,$8, $8-$7}'` `grep ! Si.scf_nk$nk.out  | tail -1 | awk '{print $5}'` `grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_nk$nk.out  | tail -1 | awk '{print $4,$5, $5-$4}'` >> res.dat
done
