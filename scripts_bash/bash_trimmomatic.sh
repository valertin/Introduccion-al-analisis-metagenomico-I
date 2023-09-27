#!/bin/sh

export trimmomatic='/PATH/TO/Trimmomatic-0.40/trimmomatic-0.40-rc1.jar'
adapters='/PATH/TO/Trimmomatic-0.40/adapters/NexteraPE-PE.fa'

## create directory for the output
mkdir -p trimmomatic_seqs/qc

## running trimmomatic on every paired of sequences

time java -jar $trimmomatic PE -threads 24 -validatePairs -basein seqs/SRR8987900_1.fastq.gz -baseout trimmomatic_seqs/SRR8987900.fastq.gz ILLUMINACLIP:$adapters:2:30:10:2:True LEADING:20 TRAILING:20 MINLEN:50
time java -jar $trimmomatic PE -threads 24 -validatePairs -basein seqs/SRR8987901_1.fastq.gz -baseout trimmomatic_seqs/SRR8987901.fastq.gz ILLUMINACLIP:$adapters:2:30:10:2:True LEADING:20 TRAILING:20 MINLEN:50
time java -jar $trimmomatic PE -threads 24 -validatePairs -basein seqs/SRR8987902_1.fastq.gz -baseout trimmomatic_seqs/SRR8987902.fastq.gz ILLUMINACLIP:$adapters:2:30:10:2:True LEADING:20 TRAILING:20 MINLEN:50
time java -jar $trimmomatic PE -threads 24 -validatePairs -basein seqs/SRR8987903_1.fastq.gz -baseout trimmomatic_seqs/SRR8987903.fastq.gz ILLUMINACLIP:$adapters:2:30:10:2:True LEADING:20 TRAILING:20 MINLEN:50

echo running fastqc
	fastqc trimmomatic_seqs/*gz -o trimmomatic_seqs/qc -t 24 --quiet 2>/dev/null
