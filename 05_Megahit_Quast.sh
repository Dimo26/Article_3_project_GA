#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:20:00
#SBATCH -J Megahit_DNA_Quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

module load bioinfo-tools
module load quast

quast.py -t 2 /home/dimam/UPPMAX_Labs/results/250407_MEgaH_DNA/final.contigs.fa -o /home/dimam/UPPMAX_Labs/results/250409_Quast_Assem_DNA
/sw/bioinfo/quast/5.0.2/rackham/bin/quast.py
