#!/bin/bash

# Set default path to 'github' if no argument is provided
search_path="${1:-github}"

# Set default depth to 3 if no second argument is provided
max_depth="${2:-3}"

# Check if the provided path exists
if [ ! -d "$search_path" ]; then
    echo "Error: Directory '$search_path' does not exist."
    exit 1
fi

# Validate max_depth is a positive integer
if ! [[ "$max_depth" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: Max depth must be a positive integer."
    exit 1
fi

# Get the current date in seconds since epoch
current_date=$(date +%s)

# Calculate the date one month ago in seconds since epoch
one_month_ago=$((current_date - 30*24*60*60))

# Temporary file to store results
temp_file=$(mktemp)

# Find all README.md files in the specified path, limited by max_depth
find "$search_path" -maxdepth "$max_depth" -name "README.md" -type f | while read -r file; do
    dir=$(dirname "$file")
    
    # Get the last modification time of README.md in seconds since epoch
    file_mod_time=$(stat -c %Y "$file")
    
    # If the file was modified in the last month, add to temp file
    if [ $file_mod_time -ge $one_month_ago ]; then
        echo "$file_mod_time $dir" >> "$temp_file"
    fi
done

# Sort the results by date (first field) and print
sort -n "$temp_file" | while read -r line; do
    mod_time=$(echo "$line" | cut -d' ' -f1)
    dir=$(echo "$line" | cut -d' ' -f2-)
    echo "$(date -d @$mod_time '+%Y-%m-%d') $dir"
done

# Remove temporary file
rm "$temp_file"
