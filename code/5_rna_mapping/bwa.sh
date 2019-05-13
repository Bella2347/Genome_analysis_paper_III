#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J rna_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools bwa/0.7.17 samtools/1.9

# Make index of the assembly
bwa index ../../dna_analysis/1_assembly/canu.contigs.fasta

# Paired reads
# Batch
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_31_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_batch_14B_31_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_b1.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_90_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_batch_14B_90_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_b2.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_32_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_batch_14C_32_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_b3.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_91_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_batch_14C_91_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_b4.bam
# Cont
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B1_30_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_cont_B1_30_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_c1.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B1_89_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_cont_B1_89_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_c2.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B6_33_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_cont_B6_33_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_c3.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B6_92_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_cont_B6_92_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_c4.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B7_29_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_cont_B7_29_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_c5.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B7_88_P1.fastq.gz ../../data/rna/trimmed_reads/trimmed_cont_B7_88_P2.fastq.gz | samtools sort -n > bwa_sorted_paired_c6.bam

# Single reads
# Batch
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_31_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_b1.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_31_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_b1.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_90_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_b2.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14B_90_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_b2.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_32_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_b3.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_32_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_b3.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_91_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_b4.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_batch_14C_91_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_b4.bam
# Cont
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B1_30_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_c1.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B1_30_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_c1.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B1_89_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_c2.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B1_89_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_c2.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B6_33_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_c3.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B6_33_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_c3.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B6_92_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_c4.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B6_92_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_c4.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B7_29_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_c5.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B7_29_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_c5.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/cana.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B7_88_S1.fastq.gz | samtools sort -n > bwa_sorted_S1_c6.bam
bwa mem -t 2 ../../dna_analysis/1_assembly/canu.contigs.fasta ../../data/rna/trimmed_reads/trimmed_cont_B7_88_S2.fastq.gz | samtools sort -n > bwa_sorted_S2_c6.bam
