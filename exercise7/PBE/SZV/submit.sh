#!/bin/bash

#SBATCH -N 2
#SBATCH -n 16
#SBATCH --time=4:00:00
#SBATCH --job-name="nice name"
#SBATCH --mem-per-cpu=1024
#SBATCH --output=stdout.txt
#SBATCH --error=stderr.txt

# module load openmpi/4.0.2
# module load gcc/6.3.0 openmpi/4.0.2 cp2k/8.2
/cluster/scratch/danielep/cp2k.ssmp -i H2O.inp > H2O.out