#!/bin/bash

# If command to give is highest myfile, the command run is
sort -nr myfile | head -10

# Sort without filename can cause error, thus 
filename=$1
filename=${filename:?"missing."}
# output: highest: filename: missing.

# To interpret \n as LINEFEED
echo -e

# To print album name and ignore album numbers
echo ${album_line:8}

# To print only the numbers and not the album name
echo ${album_line:0:7}


# Pattern-matching operators used in removing components of pathname
# If path variable has value: /home/cam/book/long.file.name
${path##/*/}
# Output: long.file.name

# To replace jpg with pcx
outfile=${filename%.pcx}.jpg

# To only match alice, hatter, or hare
@(alice|hatter|hare)

# To match everything except alice, hatter ot hare
!(alice|hatter|hare)

# To match only null string alice, hatter or hare
?(alice|hatter|hare)

