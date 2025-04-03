# Project plan for article 3
## Aim

The aim of the project is to discover which organism has the most adaptation in the low dissolved oxygen in the dead zone based on their metagenomics and metatranscriptomic data. 

## Data and organisation 
The data I will be handling will be metagenomics and metatranscriptomic data DNA (to identify the different bacteria) and RNA. Metagenomics data provides with information about the functional genetic material. The understanding of metagenomics helps us connect and understand the functions within bacteria such as enzyme activity and metabolism.  When combined with metatranscriptomic data information about expressed activity of the bacteria is provided. This helps us understand the behaviours of the bacteria (Thomas et al. 2012). 

The data and other results generated will be organised. I will create a softlink to the data to prevent using too much storage. I will be labelling the folders per the step I will be at and make sure all is readable with correct versions and datatypes. Each file in the folder will have the same format of name, type, date and version to insure clear labelling. This helps my files be organised and consistent. I will be attending all labs to gain information and do work according to the lab timeline and my project plan.

## Methods and software
There will be 3 checkpoints for my analysis. The first check point will be after step 1 and 2. This insures me that my data is ready for binning and everything from there will be for binning and further analysis. The second checkpoint will be after step 4 the quality check of assembly and bins. This insures that my binning has been done correctly. The final checkpoint will be after the analysis of activity in step 7. This is done to make sure that all has been done according to plan and the results are interpretable in advance of answering the questions and preparing the presentation. 

## Week 14-15

In advance of starting the following steps. I will learn more about Github and how to commit my codes and update the codes in a continuous manner throughout the process. I will start with the labs at my own pace and attend the labs to get help, trouble shoot and understand the steps further.  

Step 1- Reads pre-processing (Trimming + quality check)

The initial step is pre-processing. The purpose with pre-processing is to check the quality of the raw data and to trim the data if required. By improving the raw data (reads) we can improve the overall quality of the different analysis in each step as well as gain a more reliable result of which has improved quality.  Pre- processing includes modification or removal of reads which contribute to a lower overall quality. 

FastQC checks the quality of the raw data and reports the results in a report which helps us determine the quality of the reads and if we need additional steps to improve the quality by modifying the data. The input data is the raw data and the output data is a report informing us about the quality. 

Using the software Trimmomatic, we can remove low quality bases to maintain high quality reads in RNA. The software is fast and can trim crop FASTQ. The input data used is the raw data in FASTQ format. The output data will be FASTQ format files of clean and trimmed data. FastQC software is applied again on the trimmed FASTQ to check for improved quality post trimming. This helps us confirm if the trimming with Trimmomatic has worked properly. 

Step 2- Metagenome assembly
Using quality checked DNA reads sequences in FASTQ format as input data, the next step is metagenome assembly using Megahit for DNA assembly. Megahit is a software used for more complex NGS reads. The purpose of this step is to merge overlapping sequences into a longer DNA sequence instead. The output data is assembled genomic sequences. I will also evaluate the assembly using Quast. 

## Week 16 
This week I will be focusing on the report writing the introduction and methods. I will also start on answering the questions for grade 4. 

## Week 17 

Step 3- Binning
Binning is done after Metagenome assembly where the input is the assembled genomic sequences. The input is the DNA of organisms. By using the binning software Metabat we can classify the overlapping sequences into different organisms. The output will be grouped bins. 

Step 4- Quality check of assembly and bins
Binning evaluation is done to ensure that the binning worked properly and what the content of the bins is. The evaluation is done statistically by the CheckM software. CheckM compares the GC content and the size of the bins. This helps us confirm if the bins contain the entire genome i.e. only one organism or only certain parts of the genome i.e. multiple organisms. The input would be the grouped bins generated in binning and the output will be statistical results of the bins and the quality of the binning. 

Step 5- Basic phylogenetic placement of bins (Taxonomic ID)
The purpose of this step is identifying the different organisms by assigning different taxonomic IDs to the organisms in the sample based on the information found in the genome database GTDB. This is done by comparing the input which is the high-quality bins we generated in step 4 to the GTDB-Tk software. The output generated would be a classification of the bins using the taxonomic ID. 

## Week 18-20

Step 6- Functional annotation 
The software Prokka is used in online Uppmax for functional annotation. The input is the best quality bins containing the DNA sequences and the output is functional gene annotations. The software is for functional annotations of already predicted sequences. 

Step 7-  Abundance of different organisms/bins

This method helps me understand how common each organism is in each bin. The input will be the metagenomics data assembled in step 2, the grouped bins in step 4 and the original RNA, DNA FastQ files. The output data includes the files from mapping, statistics of the assembled data and the quantity of the bins. This is done using mapping tools BWA for mapping the metagenomics reads of DNA and bacterial RNA. Using countM I would count the number of reads per bin. To finally determine the abundance, I would take the reads of the bins divided by the total reads in all bins. This will give me the abundance of organisms in percent. 

Step 8- Analysis of activity (expression level) of different bins.
Differential expression is applied to count features using Htseq. Htseq is a python package which helps us count the reads that map to different genes and gene activity. The input is the trimmed RNA reads in step 1 and compare them to the functional gene annotations from step 6. The output is the expression level of the bins. 


## References 
Thomas, T., Gilbert, J., & Meyer, F. (2012). Metagenomics - a guide from sampling to data analysis. Microbial informatics and experimentation, 2(1), 3. https://doi.org/10.1186/2042-5783-2-3
