#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J rna_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools
module load trimmomatic/0.36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -phred33 /home/bella/genome_analysis/data/rna/batch...1 \
/home/bella/genome_analysis/data/rna/batch...2 trimmed_batch...1_paired trimmed_batch...1_unpaired \
trimmed_batch...2_paired trimmmed_batch...2_unpaired ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING TRAILING \
SLIDINGWINDOW MINLEN
