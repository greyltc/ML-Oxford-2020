#!/usr/bin/env bash

wget -c -P Problem_set_1 http://opendata.web.cern.ch/record/545/files/Zee.csv
ln -s ../Problem_set_1/Zee.csv Problem_set_4/

GZTABLE=GalaxyZoo1_DR_table2
wget -c -P Problem_set_2/GalaxyZoo http://galaxy-zoo-1.s3.amazonaws.com/${GZTABLE}.csv.gz
cd Problem_set_2/GalaxyZoo
gunzip -k -f ${GZTABLE}.csv.gz
cd ..
python get_images.py
