# Filter-FFUF-Output
Bash script to remove false positives from ffuf output.
## Usage
Imagine you use ffuf to fuzz directories in a website, and you recieve an output like the following:

You could use this tool, to filter the output, it will delete the results whose `words` are repeated more than 3 times:
`filter -f results.txt -o resultsFiltered.txt`

The final output would be the following:
