#!/bin/bash

# This script runs BiG-MAP to analyze the abundance of secondary metabolite gene clusters in honey bee gut microbiomes.
# BiG-MAP is a tool for estimating the abundance of Biosynthetic Gene Clusters (BGCs) using metagenomic data.

# Check if all required arguments are provided
if [ "$#" -ne 5 ]; then
    echo "Usage: $0 <big_map_script> <antismash_dir> <bigscape_dir> <pfam_dir> <output_dir>"
    exit 1
fi

# Assign input arguments to variables
big_map_script="$1"     # Path to BiG-MAP's BiG-MAP.family.py script
antismash_dir="$2"      # Directory containing AntiSMASH results
bigscape_dir="$3"       # Path to the directory containing BiG-SCAPE's executables
pfam_dir="$4"           # Path to the directory containing PFAM database
output_dir="$5"         # Directory to store BiG-MAP's output

# Command to run BiG-MAP for abundance estimation
python3 "$big_map_script" -D "$antismash_dir" -b "$bigscape_dir" -pf "$pfam_dir" -O "$output_dir"
