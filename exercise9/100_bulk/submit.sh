#!/bin/bash

#SBATCH -N 1
#SBATCH -n 9
#SBATCH --time=4:00:00
#SBATCH --job-name="ex9"
#SBATCH --mem-per-cpu=1024
#SBATCH --output=stdout.txt
#SBATCH --error=stderr.txt

#module load openmpi/4.0.2
#module load gcc/6.3.0 openmpi/4.0.2 cp2k/8.2
/cluster/scratch/danielep/cp2k.ssmp -i production_bulk.inp > production_bulk.out
