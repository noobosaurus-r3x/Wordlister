#!/bin/bash

# Check if text files were provided as arguments
if [ $# -eq 0 ]; then
    echo "Usage: $0 <text_file1> [<text_file2> ...]"
    exit 1
fi

# Create a wordlist file
wordlist="wordlist.txt"

# Concatenate the contents of all text files
combined_text=$(cat "$@")

# Extract the words from the combined text
words=$(echo "$combined_text" | tr -c '[:alnum:]' '\n' | tr '[:upper:]' '[:lower:]')

# Remove duplicates and sort the words
sorted_words=$(echo "$words" | sort -u)

# Write the words to the wordlist file
echo "$sorted_words" > "$wordlist"

# Count the number of words in the wordlist file
word_count=$(wc -l < "$wordlist")

echo "Created wordlist with $word_count words"
