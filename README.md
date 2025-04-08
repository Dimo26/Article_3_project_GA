# Project plan for article 3
## Aim

The aim of the project is to compare microbal communities in the low and high disolved oxygen areas of the dead zone using their metagenomics and metatranscriptomic data. 

## Data and organisation 
I will be working with metagenomics and metatransciptomic data in the project. Metagenomics provides functional and taxonomical information about the bacterial community in a specific location. When combined with metatranscriptomic data, we gain additional information about expression (Thomas et al. 2012). 

The results of the labs will be stored in a results folder. The results folder will have subfolders for the output files of the analysis for easier access. 

## Methods and software
There will be 3 checkpoints for my analysis. The first checkpoint will be after the first and second step. This ensures me that my data is ready for binning and the uppcoming analysis. The second checkpoint will be after the fourth step; the quality check of assembly and bins. This insures that my binning has been done correctly. The final checkpoint will be during step 6-8 to insure that all steps have been done according to plan, yielding interpretable results. 

## Week 14-15

Step 1- Reads pre-processing (Trimming + quality check)

The purpose of pre-processing is to check the quality of the raw data and to trim the data if required. FastQC checks the quality of the raw data and produces a report. The results will help me evaluate if additional steps are needed to improve the data quality. The software Trimmomatic removes the low quality bases to maintain high quality reads by trimming. The input data is the raw RNA sequences in FASTQ format. The generated output is FASTQ trimmed data files. The quality of the trimmed is evaluated with FASTQC to ensure improved quality. 

Step 2- Metagenome assembly

The purpose of this step is to merge overlapping sequences into a longer DNA sequence. Assembly is carried out by using the software Megahit which is used for more complex NGS reads. The input is the FASTQ DNA file and the output is assembled genomic sequences. The assembly is evaluated with the software Quast. 

## Week 16 
This week I will be focusing on the report writing the introduction and methods. I will also start on answering the questions for grade 4. 

## Week 17 

Step 3- Binning

Binning is carried out after Metagenome assembly.The input is the assembled DNA sequences. By using the binning software Metabat we can classify the overlapping sequences into different organisms. The output will be grouped metagenomic bins. 

Step 4- Quality check of assembly and bins

Binning evaluation is implemented to ensure that binning worked properly and to evaluate the content. The evaluation is carried out statistically by the CheckM software. CheckM compares the GC content and the size of the bins. This  confirms if the metagenomic bins contain the entire genome or only certain parts of the genome. The input is the grouped metagenomic bins and the output consists of statistical information and quality evaluation reports. 

Step 5- Basic phylogenetic placement of bins (Taxonomic ID)

The purpose of this step is to identify the different organisms. This is achived by assigning different taxonomic IDs to the organisms in the sample based on the information found in the genome database GTDB. High-quality bins are compared to the GTDB-Tk software. The generated output is a classification of the bins using the taxonomic ID. 

## Week 18-20

Step 6- Functional annotation 

The software Prokka is used in online Uppmax for functional annotation. The input is the best quality metagenomic bins and the output is functional gene annotations. The software is for functional annotations of already predicted sequences. 

Step 7-  Abundance of different organisms/bins

The purpose of the method is to determine how common each organism is in each bin. The input is the metagenomics data assembled in step 2 and the grouped bins in step 3. The output data includes files from mapping, statistics of the assembled data and the quantity of the bins. 

The method is implemented using mapping tools BWA for mapping of bacterial DNA from sample 1 and 2 to the bins. CountM is applied to count the number of reads per bin. To determine abundance, I would take the reads of the bins divided by the total reads in all bins. This will give me the abundance of organisms in percent. 

Step 8- Analysis of activity (expression level) of different bins.

Differential expression is applied to count features using Htseq. Htseq is a python package which helps us count the reads that map to different genes and gene activity. The input is the trimmed RNA reads in step 1 and compare them to the functional gene annotations from step 6. The output is the expression level of the bins. 


## References 
Thomas, T., Gilbert, J., & Meyer, F. (2012). Metagenomics - a guide from sampling to data analysis. Microbial informatics and experimentation, 2(1), 3. https://doi.org/10.1186/2042-5783-2-3
