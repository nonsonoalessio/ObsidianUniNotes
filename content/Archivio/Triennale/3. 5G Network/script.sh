#!/bin/bash

# Directory containing markdown files and media
input_folder="."  # Replace with your folder path
# Path to save the combined .docx file
output_file="./out/combined_output.docx"  # Replace with the output file path
# Temporary file to store the combined markdown content
temp_file=$(mktemp)

# Create a temporary folder for the media if not already there
temp_media_folder=$(mktemp -d)

# Loop through all .md files in the input folder and concatenate them into the temp file
for md_file in "$input_folder"/*.md; do
    if [ -f "$md_file" ]; then
        # Copy the markdown file content to the temp file
        cat "$md_file" >> "$temp_file"
        echo -e "\n\n" >> "$temp_file"  # Add some spacing between files
        echo "Added $md_file to the combined document."
    fi
done

# Copy the media (images) to the temporary folder
# Assuming images are stored in the same folder as markdown files
cp "$input_folder"/*.{png,jpg,jpeg,gif} "$temp_media_folder" 2>/dev/null

# Convert the combined markdown file into a single .docx file, ensuring media is embedded
pandoc "$temp_file" --resource-path="$temp_media_folder" -o "$output_file"
echo "Combined markdown files with media have been converted to $output_file"

# Clean up temporary files and folders
rm "$temp_file"
rm -r "$temp_media_folder"
