#!/bin/bash

# Directory containing markdown files
input_folder="."  # Replace with your folder path
# Path to save the combined .docx file
output_file="Riassunto_AnalisiDeiSegnali.docx"  # Replace with the output file path

# Create an empty temporary markdown file to store the combined content
temp_file=$(mktemp)

# Loop through all .md files in the input folder and concatenate them into the temp file
for md_file in "$input_folder"/*.md; do
    if [ -f "$md_file" ]; then
        # Append the content of the current markdown file to the temp file
        cat "$md_file" >> "$temp_file"
        echo -e "\n\n" >> "$temp_file"  # Add some spacing between files
        echo "Added $md_file to the combined document."
    fi
done

# Convert the combined markdown file into a single .docx file using Pandoc
pandoc "$temp_file" -o "$output_file"
echo "Combined markdown files have been converted to $output_file"

# Clean up the temporary file
rm "$temp_file"
