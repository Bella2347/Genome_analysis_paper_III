#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J canu_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools
module load Canu/1.7

# Assembly with canu
canu \
-p dna_assembly_lferriphilum -d /home/bella/genome_analysis/dna_analysis/assembly \
genomeSize=2.4m \
-pacbio-raw /home/bella/genome_analysis/data/dna/ERR2028?.fastq.gz
