#!/bin/bash

#simple multisequence fasta file splitter

echo "This is a simple bash project that splits a mutlisequence fasta file into different fasta files"

echo "This project is inspired from a book: 'Bioinformatics : A Practical Handbook of Next Generation Sequencing and Its Applications'"

echo "Please enter your file: "
read INPUT_FILE

echo "Please provide prefix for file name: "
read PREFIX

csplit -z $INPUT_FILE '/^>/' '{*}' --suffix="%02d.fasta" --prefix=$PREFIX -s
# csplit program takes 7 arguments as above
# csplit program takes 7 arguments:
#-z to remove empty output files
#$INPUT_FILE = multisequence fasta file
#/^>/ regular expression statement to find the line that starts with > character 
#{*} repeats the previous pattern as many times as possible
#--suffix add suffix to each individual file where %02d will be replaced by sequence number
#--prefix add prefix to each individual file
#-s do not print counts of output file sizes'

