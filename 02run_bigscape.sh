#!/bin/bash

# This script runs BiG-SCAPE to analyze secondary metabolite gene clusters in honey bee gut microbiomes.
# BiG-SCAPE is a tool for the analysis of Biosynthetic Gene Cluster (BGC) diversity and similarity.

# Check if all required arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <bigscape_path> <inputdir> <outputdir>"
    exit 1
fi

# Assign input arguments to variables
bigscape_path="$1"  # Path to BiG-SCAPE executable
inputdir="$2"       # Directory containing AntiSMASH results
outputdir="$3"      # Directory to store BiG-SCAPE output

# Command to run BiG-SCAPE with specified options
python "$bigscape_path" \
  --inputdir "$inputdir" \
  --outputdir "$outputdir" \
  --mibig \
  --mix \
  --clan_cutoff 0.3 0.7 \
  --pfam_dir "$bigscape_path"
