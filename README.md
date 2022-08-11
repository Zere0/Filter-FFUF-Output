# Filter-FFUF-Output
Bash script to remove false positives from ffuf output.
## Usage
Imagine you use ![ffuf](https://github.com/ffuf/ffuf) to fuzz directories in a website, and you recieve an output like the following:
<img width="946" alt="ffufOutput" src="https://user-images.githubusercontent.com/90275448/184212873-b80565f4-ad2d-4233-af1c-c687111c7a86.png">

You could use this tool, to filter the output, it will delete the results whose `words` are repeated more than 3 times:

`./filter.sh -f ffufOutput.txt`

The final output would be the following:
