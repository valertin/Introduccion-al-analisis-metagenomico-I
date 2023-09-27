#!/bin/bash
##
mkdir assembly

time megahit -1 trimmomatic_seqs/SRR8987900_1P.fastq.gz -2 trimmomatic_seqs/SRR8987900_2P.fastq.gz --presets meta-large --num-cpu-threads 24 --out-dir assembly/SRR8987900 --out-prefix SRR8987900 --min-contig-len 500 --continue
time megahit -1 trimmomatic_seqs/SRR8987901_1P.fastq.gz -2 trimmomatic_seqs/SRR8987901_2P.fastq.gz --presets meta-large --num-cpu-threads 24 --out-dir assembly/SRR8987901 --out-prefix SRR8987901 --min-contig-len 500 --continue
time megahit -1 trimmomatic_seqs/SRR8987902_1P.fastq.gz -2 trimmomatic_seqs/SRR8987902_2P.fastq.gz --presets meta-large --num-cpu-threads 24 --out-dir assembly/SRR8987902 --out-prefix SRR8987902 --min-contig-len 500 --continue
time megahit -1 trimmomatic_seqs/SRR8987903_1P.fastq.gz -2 trimmomatic_seqs/SRR8987903_2P.fastq.gz --presets meta-large --num-cpu-threads 24 --out-dir assembly/SRR8987903 --out-prefix SRR8987903 --min-contig-len 500 --continue
