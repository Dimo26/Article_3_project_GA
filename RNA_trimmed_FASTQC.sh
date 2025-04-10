#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:40:00
#SBATCH -J RNA_trimmed_FASTQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

#Load modules
module load bioinfo-tools
module load FastQC

fastqc -t 2 -o /home/dimam/UPPMAX_Labs/results/250404_SRR4342139_trimmed_FASTQC_RNA /home/dimam/UPPMAX_Labs/SRR4342139.1.paired.trimmed.fastq.gz /home/dimam/UPPMAX_Labs/SRR4342139.2.paired.trimmed.fastq.gz

fastqc -t 2 -o /home/dimam/UPPMAX_Labs/results/250404_SRR4342139_trimmed_FASTQC_RNA /home/dimam/UPPMAX_Labs/SRR4342139.1.unpaired.trimmed.fastq.gz /home/dimam/UPPMAX_Labs/SRR4342139.2.unpaired.trimmed.fastq.gz

fastqc -t 2 -o /home/dimam/UPPMAX_Labs/results/250404_SRR4342137_trimmed_FASTQC_RNA /home/dimam/UPPMAX_Labs/SRR4342137.1.paired.trimmed.fastq.gz /home/dimam/UPPMAX_Labs/SRR4342137.2.paired.trimmed.fastq.gz 

fastqc -t 2 -o /home/dimam/UPPMAX_Labs/results/250404_SRR4342137_trimmed_FASTQC_RNA /home/dimam/UPPMAX_Labs/SRR4342137.1.unpaired.trimmed.fastq.gz /home/dimam/UPPMAX_Labs/SRR4342137.2.unpaired.trimmed.fastq.gz


