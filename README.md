# Bee_micro_BGC
This repository contains a collection of scripts for analyzing microbiome data from honey bee gut microbiomes. The scripts are designed to automate the process of analyzing secondary metabolite gene clusters and estimating their abundance using various bioinformatics tools.

## Requirements

- Linux environment
- Python 3
- Bioinformatics tools: AntiSMASH, BiG-SCAPE, BiG-MAP
- Dependencies for each tool as mentioned in their respective documentation

## Usage

1.Make the scripts executable:
chmod +x 01run_antismash.sh
chmod +x 02run_bigscape.sh
chmod +x 03big_map.sh
chmod +x 04big_map.sh
2.Run each script with the required arguments to perform the analysis:

run_antismash.sh analyzes secondary metabolite gene clusters.
run_bigscape.sh analyzes and compares Biosynthetic Gene Clusters (BGCs).
run_bigmap.sh estimates the abundance of BGCs.
For example:
./01run_antismash.sh <input_genbank_file>
./02run_bigscape.sh <bigscape_path> <inputdir> <outputdir>
./03big_map.sh <antismash_dir> <bigscape_dir> <pfam_dir> <output_dir>
./04big_map.sh <big_map_script> <metadata_file> <input_files_1> <input_files_2> <output_directory> <family_directory>
Replace placeholders with actual directory paths and file names.
Script Details
01run_antismash.sh runs AntiSMASH for analyzing secondary metabolite gene clusters.
02run_bigscape.sh runs BiG-SCAPE for BGC diversity and similarity analysis.
03big_map.sh runs BiG-MAP for estimating the abundance of BGCs using metagenomic data.
04big_map.sh runs BiG-MAP for estimating the abundance of BGCs using metagenomic data.
