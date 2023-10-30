#!/bin/bash

# This script runs the BiG-MAP tool to analyze the abundance of secondary metabolite gene clusters in the gut microbiomes of honey bees.
# BiG-MAP is used to estimate the abundance of Biosynthetic Gene Clusters (BGCs) using metagenomic data.

# Usage: ./run_bigmap.sh <antismash_directory> <bigscape_directory> <pfam_directory> <output_directory>

# Check if all required arguments are provided
if [[ $# -ne 4 ]]; then
    echo "Usage: $0 <antismash_directory> <bigscape_directory> <pfam_directory> <output_directory>"
    exit 1
fi

# Parse command line arguments
antismash_dir="$1"
bigscape_dir="$2"
pfam_dir="$3"
output_dir="$4"

# Command to run BiG-MAP for abundance estimation.
python3 /home/langhaoyu/BIG-MAP/src/BiG-MAP.family.py \
    -D "$antismash_dir" \
    -b "$bigscape_dir" \
    -pf "$pfam_dir" \
    -O "$output_dir"