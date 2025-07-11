#!/bin/bash

#source vs executing
# have a script set_paths.sh to define paths to FASTA files
#!/bin/bash
FASTA_DIR=\"/Desktop/Chapter-4/fasta\"

#If run:
source set_paths.sh
echo $FASTA_DIR

## ✅ The variable is available.

# But:
./set_path.sh
echo $FASTA_DIR

## 🚫 $FASTA_DIR will be undefined, because it ran in a subshell.


## Defining a function
# Method 1
function greet {
    echo "Hello from function!"
}

# Method 2
greet() {
    echo "Hello from function!"
}

#delete function
unset -f greet


## For long output use more
declare -f |more


## if shell script, function and alias have same name like greet.
# make shell script
echo 'echo "Hello from the function."'> greet
chmod +x greet

#make function
greet() {
    echo "Hello from function!"
}

#make alias
alias greet='echo "Hello, I am the alias."'

#now use the type options
type greet


## To remove all
unalias greet
unset -f greet
rm greet


## execute the type options
type -t bash      # file
type -t if        # keyword


## Example of positional parameters
touch hello.sh
vim hello.sh

echo "hello: $@"
echo "$0: $1 $2 $3 $4"
echo "$# arguments"

chmod +x hello.sh
./hello.sh I am the argument.

# $0: ./hello.sh
# $1: I
# $2: am 
# $3: the 
# $4: argument
# $#: 4


## Positional parameters in functions
function hello {
    echo "hello: $*"
    echo "$0: $1 $2 $3 $4"
    echo "$# arguments"
}

hello I am the argument

##Example for $@ and $*
IFS=,
echo "$*"

./hello.sh hi welcome greet

# $@
function countargs {
    echo "$# args."
}

countargs "$*"
countargs "$@"

./hello.sh hi welcome greet



##  For variable syntax
#Example 1: Ambiguous variable name
echo $UID_     # Wrong! Looks for UID_ variable

echo ${UID}_   # ✅ Correct! Prints your UID followed by underscore



## Examples for pattern operators

# Removes the shortest match of pattern from the start
path=/Desktop/hello/file.tar.gz
echo $path
echo ${path#/*} 
# Output: Desktop/hello/file.tar.gz

# Removes the longest match of pattern from the start
path=/home/user/file.tar.gz
echo ${path##/*/} 
# output: file.tar.gz

# Removes the shortest match of pattern from the end
file=file.tar.gz
echo ${file%.*}
#output:file.tar

# Removes the longest match of pattern from the end
file=file.tar.gz
echo ${file%%.*} 
#output:file

# Replace First vs All Occurrences
text="apple banana apple grape"
echo ${text/apple/orange}      # replaces first "apple"
# Output: orange banana apple grape

echo ${text//apple/orange}     # replaces all "apple"
# Output: orange banana orange grape

# Replace Only at Start
file="report_final.txt"
echo ${file/#report/hello}
# Output: report_final.pdf

echo ${file/%final/pdf}
# Output: report_final.txt (unchanged; "final" is not at the end)


# Replace Only at End

file="report_final.txt"
echo ${file/%txt/pdf}
# Output: report_final.pdf

echo ${file/%final/pdf}
# Output: report_final.txt (unchanged; "final" is not at the end)


## Example for task
filename="cat.pcx"
outfile="${filename%.pcx}.jpg"
echo $outfile 
# Outputs: cat.jpg

filename="cat.xpm"
outfile="${filename%.pcx}.jpg"
echo $outfile  
# Outputs: cat.xpm.jpg


## Example for banner name
pathname=/home/guest/Desktop/bash_basics
bannername=${pathanem##*/}
echo "Bannername: $bannername"
#output: bash_basics

# can also use bashname
bashname /Desktop/Chapter-4_bash/hello


## Example for lengthpath=/Desktop/hello/file.tar.gz operator
filename=albums.txt
echo ${#filename}


## Examples for Pattern Matching

#The pattern containing "hello", "welcome", "greet"
*(hello|welcome|greet)
#match zero or more occurrences of the pattern and also null string

+(hello|welcome|greet)
# same but not match the null string

?(hello|welcome|greet)
# only match the null string, hello, welcome or greet.

@(hello|welcome|greet)
# match only any one of them

!(hello|welcome|greet)
#matched everything except these

## Remove all files except those starting with vt followed by a number:
rm !(vt+([0-9]))


## Examples of command substitution
# Get current directory
current_dir=$(pwd)

# List files in home directory
files=$(ls $HOME)

# List files in current directory (nested)
files=$(ls $(pwd))

# Contents of a file (without trailing newline)
content=$(< alice)

# Find all files with detailed info for a command
ls -l $(type -path -all bash)

# Open all chapter files containing "command substitution"
vi $(grep -l 'command substitution' ch*)


## Example for command substitution
# Print those files
lp $(lsd 'Jan 15')


## Examples for popd and pushd
pushd bash_video
popd

    