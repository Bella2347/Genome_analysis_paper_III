#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J rna_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools htseq/0.9.1

htseq-count -r --stranded=no \
alignment_file\
 /home/bella/genome_analysis/dna_analysis/3_annotation/prokka/1_prokka_annotation.gff
