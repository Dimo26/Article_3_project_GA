#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBTACH -n 2
#SBATCH -t 01:30:00
#SBATCH -J Functional_annotation_bacterias
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

#Load modules 
module load bioinfo-tools
module load prokka

prokka --outdir /home/dimam/UPPMAX_Labs/results/250422_Prokka_bins/Bin_5 \
--prefix bin_5_Anno \
/home/dimam/UPPMAX_Labs/results/250422_HQ_bins/250410_Bin_DNA_5.fa

prokka --outdir /home/dimam/UPPMAX_Labs/results/250422_Prokka_bins/Bin_11 \
--prefix bin_11_Anno \
/home/dimam/UPPMAX_Labs/results/250422_HQ_bins/250410_Bin_DNA_11.fa

prokka --outdir /home/dimam/UPPMAX_Labs/results/250422_Prokka_bins/Bin_12 \
--prefix bin_12_Anno \
/home/dimam/UPPMAX_Labs/results/250422_HQ_bins/250410_Bin_DNA_12.fa

prokka --outdir /home/dimam/UPPMAX_Labs/results/250422_Prokka_bins/Bin_24 \
--prefix bin_24_Anno \
/home/dimam/UPPMAX_Labs/results/250422_HQ_bins/250410_Bin_DNA_24.fa

prokka --outdir /home/dimam/UPPMAX_Labs/results/250422_Prokka_bins/Bin_25 \
--prefix bin_25_Anno \
/home/dimam/UPPMAX_Labs/results/250422_HQ_bins/250410_Bin_DNA_25.fa
