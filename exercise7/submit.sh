#!/bin/bash
for dir in PBE/DZVP PBE/TZVP B3LYP/DZVP B3LYP/TZVP
do
	cd $dir
	pwd
	for mol in "H2O" "ethanol" "ethene" "ts"
	do
		echo "#!/bin/bash
#SBATCH -N 2
#SBATCH -n 16
#SBATCH --time=4:00:00
#SBATCH --job-name='${dir}/${mol}'
#SBATCH --mem-per-cpu=2048
#SBATCH --output=stdout.txt
#SBATCH --error=stderr.txt

# module load openmpi/4.0.2
module load gcc/6.3.0 openmpi/4.0.2 cp2k/8.2
/cluster/scratch/danielep/cp2k.ssmp -i ${mol}.inp > ${mol}.out
" | sbatch
	done
	cd ../..
done
