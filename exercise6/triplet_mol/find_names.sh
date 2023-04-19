#!/bin/bash

files=$(ls | grep o2-WFN)

out="names.txt"

echo "file wavefunction spin orbital" > $out


for file in $files
do
    type=$(head $file | sed -n 2p | awk '{ print $2 " " $4 " " $6 $8}')
    echo "${file} ${type}" >> $out
done