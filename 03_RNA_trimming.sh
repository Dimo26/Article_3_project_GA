#!/bin/bash -l

#SBATCH -A uppmax2025-3-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:15:00
#SBATCH -J RNA_trimming
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

module load bioinfo-tools
module load trimmomatic/0.39
module load java

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE \
-threads 2 \
-phred33 \
-trimlog SRR4342137.trimlog \
/home/dimam/UPPMAX_Labs/SRR4342137.1.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342137.2.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342137.1.paired.trimmed.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342137.1.unpaired.trimmed.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342137.2.paired.trimmed.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342137.2.unpaired.trimmed.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 \
LEADING:3 \
TRAILING:3 \
SLIDINGWINDOW:4:15 \
MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE \
-threads 2 \
-phred33 \
-trimlog SRR4342139.trimlog \
/home/dimam/UPPMAX_Labs/SRR4342139.1.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342139.2.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342139.1.paired.trimmed.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342139.1.unpaired.trimmed.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342139.2.paired.trimmed.fastq.gz \
/home/dimam/UPPMAX_Labs/SRR4342139.2.unpaired.trimmed.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 \
LEADING:3 \
TRAILING:3 \
SLIDINGWINDOW:4:15 \
MINLEN:36





