#!/bin/bash
# Reconstruct musique.m4a from the base64 parts
cat part_00 part_01 part_02 part_03 part_04 part_05 part_06 part_07 part_08 part_09 \
    part_10 part_11 part_12 part_13 part_14 part_15 part_16 part_17 part_18 part_19 \
    part_20 part_21 part_22 part_23 part_24 part_25 part_26 part_27 part_28 part_29 \
    part_30 part_31 part_32 > musique.m4a.b64
base64 -d musique.m4a.b64 > musique.m4a
echo "Fichier reconstruit : musique.m4a"
ls -lh musique.m4a
