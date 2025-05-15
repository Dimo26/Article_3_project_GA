#! /bin/bash -l

#SBATCH -A uppmax2025-3-3 
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J Activity_analysis
#SBATCH --mail-type=ALL
#SBATCH --mail-user dima.mohsin.1749@student.uu.se

#Load modules

module load bioinfo-tools
module load htseq

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_11_SRR4342137.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_11_Anno_cleaned.gff
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_11_counts_37.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_12_SRR4342137.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_12_Anno_cleaned.gff \ 
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_12_counts_37.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_24_SRR4342137.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_24_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_24_counts_37.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_25_SRR4342137.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_25_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_25_counts_37.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_5_SRR4342137.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_5_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_5_counts_37.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_11_SRR4342139.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_11_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_11_counts_39.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_12_SRR4342139.bam  \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_12_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_12_counts_39.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_24_SRR4342139.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_24_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_24_counts_39.txt

htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_25_SRR4342139.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_25_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_25_counts_39.txt


htseq-count -f bam -r pos -s no -t CDS -i ID \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250501_Expression_RNA/250410_Bin_RNA_5_SRR4342139.bam \
/proj/uppmax2025-3-3/UPPMAX_Labs/results/250429_cleaned_prokka_gff/bin_5_Anno_cleaned.gff \
> /proj/uppmax2025-3-3/UPPMAX_Labs/results/250428_expression_levels/Bin_5_counts_39.txt


