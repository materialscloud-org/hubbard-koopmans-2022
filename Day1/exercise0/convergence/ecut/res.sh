rm -fr res.dat
for ecut in 20 30 40 50 60 80; do 
echo $ecut `grep highest Si.scf_ecut$ecut.out  | tail -1 | awk '{print $7,$8, $8-$7}'` `grep ! Si.scf_ecut$ecut.out  | tail -1 | awk '{print $5}'` `grep -A 2 "k = 0.0000 0.0000 0.0000" Si.scf_ecut$ecut.out  | tail -1 | awk '{print $4,$5, $5-$4}'` >> res.dat
done
