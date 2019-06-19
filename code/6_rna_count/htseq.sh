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

htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_b1.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_b1.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_b2.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_b2.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_b3.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_b3.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_b4.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_b4.txt

htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_c1.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_c1.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_c2.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_c2.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_c3.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_c3.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_c4.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_c4.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_c5.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_c5.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_paired_c6.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_c6.txt

htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_b1.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_b1.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_b2.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_b2.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_b3.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_b3.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_b4.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_b4.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_c1.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_c1.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_c2.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_c2.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_c3.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_c3.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_c4.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_c4.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_c5.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_c5.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S1_c6.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S1_c6.txt

htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_b1.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_b1.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_b2.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_b2.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_b3.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_b3.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_b4.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_b4.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_c1.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_c1.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_c2.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_c2.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_c3.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_c3.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_c4.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_c4.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_c5.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_c5.txt
htseq-count --format=bam --order=name --stranded=no --type=CDS --idattr=ID ../3_mapping/bwa_sorted_S2_c6.bam ../../dna_analysis/3_annotation/prokka/prokka_annotation_without_fasta.gff > htseq_count_S2_c6.txt
