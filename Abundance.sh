#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy 
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J Abundance_Bins_Organisms
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

#Load modules

module load bioinfo-tools
module load bwa/0.7.8
module load samtools

BINS="/home/dimam/UPPMAX_Labs/results/250422_HQ_bins"
DNA="/home/dimam/UPPMAX_Labs"
OUTPUT_Dir="/home/dimam/UPPMAX_Labs/results/250422_Abundance"
for bin in 250410_Bin_DNA_5 250410_Bin_DNA_11 250410_Bin_DNA_12 250410_Bin_DNA_24 250410_Bin_DNA_25
do 
    bwa index $BINS/${bin}.fa
    bwa mem $BINS/${bin}.fa $DNA/SRR4342129_1.paired.trimmed.fastq.gz $DNA/SRR4342129_2.paired.trimmed.fastq.gz | samtools view -u -b > $OUTPUT_Dir/${bin}_SRR4342129.bam
    samtools flagstat $OUTPUT_Dir/${bin}_SRR4342129.bam > ${OUTPUT_Dir}/${bin}_SRR4342129_flagstat.txt    
done


for bin in 250410_Bin_DNA_5 250410_Bin_DNA_11 250410_Bin_DNA_12 250410_Bin_DNA_24 250410_Bin_DNA_25
do
    bwa index $BINS/${bin}.fa
    bwa mem $BINS/${bin}.fa $DNA/SRR4342133_1.paired.trimmed.fastq.gz $DNA/SRR4342133_2.paired.trimmed.fastq.gz | samtools view -u -b > $OUTPUT_Dir/${bin}_SRR4342133.bam
    samtools flagstat $OUTPUT_Dir/${bin}_SRR4342133.bam > ${OUTPUT_Dir}/${bin}_SRR4342133_flagstat.txt
done

