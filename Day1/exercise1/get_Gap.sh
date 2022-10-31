etot=`grep ! Si.pw.out | tail -1 | awk '{print $5}'`
gap=`grep highest Si.pw.out | tail -1 | awk '{print $8-$7}'`
gapG=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.pw.out | tail -1 | awk '{print $5-$4}'`
W=`grep -A 2 "k = 0.0000 0.0000 0.0000" Si.pw.out | tail -1 | awk '{print $4-$1}'`

echo "  Etot [Ry]     Eg(indirect) [eV]  Eg(direct) [eV]  Band Width [eV]"
echo $nq $etot "       " $gap "        " $gapG "          " $W
