#!/bin/bash

# This script runs AntiSMASH to analyze secondary metabolite clusters in honey bee gut microbiomes.
# AntiSMASH is a tool for the automatic genomic identification and analysis of biosynthetic gene clusters.

# Check if an input file is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_genbank_file>"
  exit 1
fi

# Input GenBank file for analysis
input_file="$1"

# Command to run AntiSMASH with specified options
antismash --clusterblast --subclusterblast --knownclusterblast --smcogs --inclusive --borderpredict --full-hmmer --asf --enable-BiosynML --taxon bacteria --input-type nucl --cpus 10 "$input_file"