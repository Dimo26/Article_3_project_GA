#!/bin/bash -l 

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 16
#SBATCH -t 01:45:00
#SBATCH -J basic_phyl_DNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

#Load modules

module load bioinfo-tools
module load GTDB-Tk/2.4.0 

#commands
gtdbtk classify_wf \
--genome_dir /home/dimam/UPPMAX_Labs/results/250422_HQ_bins \
--out_dir /home/dimam/UPPMAX_Labs/results/250422_GTDBTK \
--extension fa \
--cpus 16 \
--skip_ani_screen

