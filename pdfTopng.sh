#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input.pdf output.png"
    exit 1
fi

# Assign input and output file names
input_file="$1"
output_file="$2"

# Convert PDF to PNG using ImageMagick with white background
convert -density 300 -background white -flatten "$input_file" -quality 100 "$output_file"

# Check if the conversion was successful
if [ $? -eq 0 ]; then
    echo "Conversion completed: $input_file -> $output_file"
else
    echo "Error during conversion."
fi
