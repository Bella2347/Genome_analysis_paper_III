#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J rna_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools
module load trimmomatic/0.36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -phred33 \
/home/bella/genome_analysis/data/rna/batch_14B_31_1.fastq.gz /home/bella/genome_analysis/data/rna/batch_14B_31_2.fastq.gz \
trimmed_batch_14B_31_1_paired.fastq.gz trimmed_batch_14B_31_1_unpaired.fastq.gz \
trimmed_batch_14B_31_2_paired.fastq.gz trimmed_batch_14B_31_2_unpaired.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:28 TRAILING:28 MINLEN:36
