#!/bin/bash -l
#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core 
#SBATCH -n 4
#SBATCH -t 02:30:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

module load bioinfo-tools
module load CheckM/1.1.3

checkm lineage_wf -t 4 -x fa --reduced_tree /home/dimam/UPPMAX_Labs/results/250410_Bin_DNA /home/dimam/UPPMAX_Labs/results/250410_CheckM_Bin
