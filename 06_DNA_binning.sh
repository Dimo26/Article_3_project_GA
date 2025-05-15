#!/bin/bash -l 
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:50:00
#SBATCH -J DNA_binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

module load bioinfo-tools
module load MetaBat

metabat -i /home/dimam/UPPMAX_Labs/results/250407_MEgaH_DNA/final.contigs.fa -o /home/dimam/UPPMAX_Labs/results/250410_Bin_DNA 
