# Sbatch for eggNOGmapper annotation
#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J emapper_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user bsm.sinclair@gmail.com

# Load modules
module load bioinfo-tools
module load eggNOG-mapper/1.0.3

# Use the canu assembly, the bact database, name files 1_emapper_annotation, in directory emapper
emapper.py -i /home/bella/genome_analysis/dna_analysis/1_assembly/1_canu_dna_assembly.contigs.fasta \
 -d bact -o 1_emapper_annotation --output_dir /home/bella/genome_analysis/dna_analysis/3_annotation/emapper


