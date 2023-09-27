#!/bin/bash

minikraken2='/PATH/to/db'

##
mkdir -p kraken2/unc
mkdir kraken2/class

time kraken2 --db $minikraken2 --threads 24 --report-zero-counts --report kraken2/SRR8987900.report --gzip-compressed --unclassified-out kraken2/unc/SRR8987900_unc_R#.fastq --classified-out kraken2/class/SRR8987900_class_R#.fastq --paired trimmomatic_seqs/SRR8987900_1P.fastq.gz trimmomatic_seqs/SRR8987900_2P.fastq.gz --output kraken2/SRR8987900.kraken2
time kraken2 --db $minikraken2 --threads 24 --report-zero-counts --report kraken2/SRR8987901.report --gzip-compressed --unclassified-out kraken2/unc/SRR8987901_unc_R#.fastq --classified-out kraken2/class/SRR8987901_class_R#.fastq --paired trimmomatic_seqs/SRR8987901_1P.fastq.gz trimmomatic_seqs/SRR8987901_2P.fastq.gz --output kraken2/SRR8987901.kraken2
time kraken2 --db $minikraken2 --threads 24 --report-zero-counts --report kraken2/SRR8987902.report --gzip-compressed --unclassified-out kraken2/unc/SRR8987902_unc_R#.fastq --classified-out kraken2/class/SRR8987902_class_R#.fastq --paired trimmomatic_seqs/SRR8987902_1P.fastq.gz trimmomatic_seqs/SRR8987902_2P.fastq.gz --output kraken2/SRR8987902.kraken2
time kraken2 --db $minikraken2 --threads 24 --report-zero-counts --report kraken2/SRR8987903.report --gzip-compressed --unclassified-out kraken2/unc/SRR8987903_unc_R#.fastq --classified-out kraken2/class/SRR8987903_class_R#.fastq --paired trimmomatic_seqs/SRR8987903_1P.fastq.gz trimmomatic_seqs/SRR8987903_2P.fastq.gz --output kraken2/SRR8987903.kraken2

