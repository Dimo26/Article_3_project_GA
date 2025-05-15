#!/bin/bash -l 
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core 
#SBATCH -n 2
#SBATCH -t 00:40:00
#SBATCH -J FastQC_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dima.mohsin.1749@student.uu.se

#Load modules
module load bioinfo-tools
module load FastQC

fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342137.1.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342137_FASTQC_RNA
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342137.2.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342137_FASTQC_RNA
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342139.1.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342139_FASTQC_RNA
fastqc -t 2 /home/dimam/UPPMAX_Labs/SRR4342139.2.fastq.gz -o /home/dimam/UPPMAX_Labs/results/250403_SRR4342139_FASTQC_RNA

