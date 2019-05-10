#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J rna_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools bwa/0.7.17

# Make index of the assembly
# bwa index ../../dna_analysis/1_assembly/1_canu_dna_assembly.contigs.fasta

bwa mem ../../dna_analysis/1_assembly/1_canu_dna_assembly.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_31_P1.fastq.gz \ 
../../data/rna/trimmed_reads/trimmed_batch_14B_31_P2.fastq.gz > bwa_b1.sam

bwa mem ../../dna_analysis/1_assembly/1_canu_dna_assembly.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_90_P1.fastq.gz \
../../data/rna/trimmed_reads/trimmed_batch_14B_90_P2.fastq.gz > bwa_b2.sam

bwa mem ../../dna_analysis/1_assembly/1_canu_dna_assembly.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_32_P1.fastq.gz \
../../data/rna/trimmed_reads/trimmed_batch_14C_32_P2.fastq.gz > bwa_b3.sam

bwa mem ../../dna_analysis/1_assembly/1_canu_dna_assembly.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_91_P1.fastq.gz \
../../data/rna/trimmed_reads/trimmed_batch_14C_91_P2.fastq.gz > bwa_b4.sam

