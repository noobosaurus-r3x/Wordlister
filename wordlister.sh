#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if [ $# -eq 0 ]; then
    echo "Usage: $0 <text_file1> [<text_file2> ...]"
    exit 1
fi

wordlist="wordlist.txt"

# Process input files to extract unique words in lowercase
LC_ALL=C cat "$@" \
    | tr -c '[:alnum:]' '\n' \
    | tr '[:upper:]' '[:lower:]' \
    | sort -u > "$wordlist"

word_count=$(wc -l < "$wordlist")
echo "Created wordlist with $word_count words"
