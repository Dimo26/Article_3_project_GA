#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:30:00
#SBATCH -J Megahit_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

# Load modules
module load bioinfo-tools
module load megahit

# Command
megahit -1 /home/dimam/UPPMAX_Labs/SRR4342129_1.paired.trimmed.fastq.gz,/home/dimam/UPPMAX_Labs/SRR4342133_1.paired.trimmed.fastq.gz \
-2 /home/dimam/UPPMAX_Labs/SRR4342129_2.paired.trimmed.fastq.gz,/home/dimam/UPPMAX_Labs/SRR4342133_2.paired.trimmed.fastq.gz \
-o /home/dimam/UPPMAX_Labs/results/250407_MEgaH_DNA --force \
--kmin-1pass \
--k-list 45,63,91 


