echo "DFT calculation"
cd 0_dft 
 sh run.sh
cd ../ 

echo "KI calculation"
echo " 1-Wannier"
cd 1_wannier
 sh run.sh
cd ../

echo " 2-Screening (from reference)"

echo " 3-Hamiltonian"
cd 3_hamiltonian
 sh run.sh
cd ..

