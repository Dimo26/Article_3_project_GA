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
OUTPUT_Dir="/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA"

for bin in 250410_Bin_DNA_5 250410_Bin_DNA_11 250410_Bin_DNA_12 250410_Bin_DNA_24 250410_Bin_DNA_25
do  
    bin_RNA=$(echo $bin | sed 's/DNA/RNA/g')
    bwa index $BINS/${bin}.fa
    bwa mem $BINS/${bin}.fa $RNA/SRR4342137.1.paired.trimmed.fastq.gz $RNA/SRR4342137.2.paired.trimmed.fastq.gz | samtools view -b |samtools sort -o $OUTPUT_Dir/${bin_RNA}_SRR4342137.bam
    samtools flagstat $OUTPUT_Dir/${bin_RNA}_SRR4342137.bam > ${OUTPUT_Dir}/${bin_RNA}_SRR4342137_flagstat.txt
    samtools index $OUTPUT_Dir/${bin_RNA}_SRR4342137.bam     
done

for bin in 250410_Bin_DNA_5 250410_Bin_DNA_11 250410_Bin_DNA_12 250410_Bin_DNA_24 250410_Bin_DNA_25
do
    bin_RNA=$(echo $bin | sed 's/DNA/RNA/g')
    bwa index $BINS/${bin}.fa
    bwa mem $BINS/${bin}.fa $RNA/SRR4342139.1.paired.trimmed.fastq.gz $RNA/SRR4342139.2.paired.trimmed.fastq.gz | samtools view -b |samtools sort -o $OUTPUT_Dir/${bin_RNA}_SRR4342139.bam
    samtools flagstat $OUTPUT_Dir/${bin_RNA}_SRR4342139.bam > ${OUTPUT_Dir}/${bin_RNA}_SRR4342139_flagstat.txt
    samtools index $OUTPUT_Dir/${bin_RNA}_SRR4342139.bam
done


