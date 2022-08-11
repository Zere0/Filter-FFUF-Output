# Filter-FFUF-Output
Bash script to remove false positives from ffuf output.

## Usage
Imagine you use [ffuf](https://github.com/ffuf/ffuf) to fuzz directories in a website, and you recieve an output like the following:

<img width="542" alt="ffufOutput" src="https://user-images.githubusercontent.com/90275448/184215171-75ac7480-2160-4f41-b73f-8839649e34c8.png">

You could use this tool, to filter the output, it will delete the results whose `Words` are repeated more than 3 times:

`./filter.sh output_ffuf.txt`

The final output would be the following:

<img width="545" alt="filteredOutput" src="https://user-images.githubusercontent.com/90275448/184214764-adbd690e-499f-4ab7-9492-4914cad41020.png">
