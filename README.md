# Wordlister

This script generates a wordlist from one or more text files by extracting and sorting unique words.

## Usage

1. Clone the repository or download the script file.

2. Open a terminal and navigate to the directory where the script is located.

3. Make the script executable:
```bash
 chmod +x wordlist.sh
```
 
Run the script, providing the text files you want to process as arguments:

```bash
./wordlist.sh file1.txt file2.txt file3.txt

```
You can specify as many text files as you want, separated by spaces.

The script will concatenate the contents of all the provided text files, extract the words, remove duplicates, sort them, and save the resulting wordlist in a file called wordlist.txt in the same directory. It will display a message indicating the number of words in the wordlist.
