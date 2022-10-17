
cd 0_dft
 ./clean.sh
 ./run.sh
cd ../

cd 1_wannier
 ./clean.sh
 ./run.sh
cd ../

cd 2_screening
cd wannier_222
./clean.sh
./run.sh
cd ../screening
./clean.sh
./run.sh
cd ..
cd ..

cd 3_hamiltonian
./clean.sh
./run.sh
cd ..

