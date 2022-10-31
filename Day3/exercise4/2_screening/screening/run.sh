#!/bin/bash

printf "  KCW Screening ... "
./link_wann.sh 
kcw.x -in kc.ksi > kc.kso
echo "  done" 
