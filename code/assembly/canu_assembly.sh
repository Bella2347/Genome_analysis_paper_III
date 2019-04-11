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
module load canu/1.7

# Assembly with canu. I set the genome size to 2.4 mbp because that is the size of
# the draft genome for L. ferriphilum which feels lika a good estimate if I did not
# know the results of the paper. 
canu \
-p 1_canu_dna_assembly -d /home/bella/genome_analysis/dna_analysis/assembly \
genomeSize=2.4m \
stopOnReadQuality=false \
-pacbio-raw /home/bella/genome_analysis/data/dna/*.fastq.gz
