#!/bin/bash

echo 8 > file_alpharef.txt
grep alpha ../2_screening/screening/kc.kso | tail -8 | awk '{print $3, $12, $16}' >> file_alpharef.txt
