#!/bin/bash

# This script runs BiG-MAP to analyze the abundance of secondary metabolite gene clusters in honey bee gut microbiomes.
# BiG-MAP is a tool for estimating the abundance of Biosynthetic Gene Clusters (BGCs) using metagenomic data.

# Check if all required arguments are provided
if [ "$#" -ne 6 ]; then
    echo "Usage: $0 <big_map_script> <metadata_file> <input_files_1> <input_files_2> <output_directory> <family_directory>"
    exit 1
fi

# Assign input arguments to variables
big_map_script="$1"     # Path to BiG-MAP's BiG-MAP.map.py script
metadata_file="$2"      # Path to the metadata file
input_files_1="$3"      # Path to input files 1
input_files_2="$4"      # Path to input files 2
output_directory="$5"   # Path to the output directory
family_directory="$6"   # Path to the family directory

# Command to run BiG-MAP
python3 "$big_map_script" -b "$metadata_file" -I1 "$input_files_1" -I2 "$input_files_2" -O "$output_directory" -F "$family_directory"
