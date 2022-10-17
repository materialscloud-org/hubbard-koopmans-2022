rm -fr out 
cd 0_dft
 ./clean.sh
cd ../

cd 1_wannier
 ./clean.sh
cd ../

cd 2_screening
cd wannier_222
./clean.sh
cd ../screening
./clean.sh
cd ..
cd ..

cd 3_hamiltonian
./clean.sh
cd ..

