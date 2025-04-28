#! /bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J Expression_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

#Load modules

module load bioinfo-tools
module load bwa/0.7.8
module load samtools


BINS="/home/dimam/UPPMAX_Labs/results/250422_HQ_bins"
RNA="/home/dimam/UPPMAX_Labs/Trimmed_RNA"
OUTPUT_Dir="/home/dimam/UPPMAX_Labs/results/250425_Expression"
for bin in 250410_Bin_DNA_5 250410_Bin_DNA_11 250410_Bin_DNA_12 250410_Bin_DNA_24 250410_Bin_DNA_25
do 
    bwa index $BINS/${bin}.fa
    bwa mem $BINS/${bin}.fa $RNA/SRR4342137.1.paired.trimmed.fastq.gz $RNA/SRR4342137.2.paired.trimmed.fastq.gz | samtools view -u -b > $OUTPUT_Dir/${bin}_SRR43432137.bam
    samtools flagstat $OUTPUT_Dir/${bin}_SRR43432137.bam > ${OUTPUT_Dir}/${bin}_SRR43432137_flagstat.txt    
done

for bin in 250410_Bin_DNA_5 250410_Bin_DNA_11 250410_Bin_DNA_12 250410_Bin_DNA_24 250410_Bin_DNA_25
do
    bwa index $BINS/${bin}.fa
    bwa mem $BINS/${bin}.fa $RNA/SRR4342139.1.paired.trimmed.fastq.gz $RNA/SRR4342139.2.paired.trimmed.fastq.gz | samtools view -u -b > $OUTPUT_Dir/${bin}_SRR43432139.bam
    samtools flagstat $OUTPUT_Dir/${bin}_SRR43432139.bam > ${OUTPUT_Dir}/${bin}_SRR43432139_flagstat.txt
done


