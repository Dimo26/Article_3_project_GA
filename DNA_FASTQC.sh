#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J FastQC_DNA 
#SBATCH --mail-type=ALL 
#SBATCH --mail-user dima.mohsin.1749@student.uu.se
 
# Load modules
module load bioinfo-tools
module load FastQC
# Your commands
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342129_1.paired.trimmed.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342129_FASTQC_DNA
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342129_2.paired.trimmed.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342129_FASTQC_DNA
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342133_1.paired.trimmed.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342133_FASTQC_DNA
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342133_2.paired.trimmed.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342133_FASTQC_DNA


