## example for if/else
filename="hello"

if [ -f "$filename" ]; then
    echo "File exists."
elif [ -d "$filename" ]; then
    echo "It's a directory, not a file."
else
    echo "No such file or directory."
fi

## example for exit status
if grep "ATGG" genes.txt
then
    echo "Sequence found."
else
    echo "Sequence not found or error reading file."
fi

##example of built-in error
builtin hello

##example for exit status saving
cd badfolder
echo $?    # → 1 (error)

cd goodfolder
echo $?    # → 0 (success)


## for using exit as return value is wrong
#wrong way
myfunc () {
    return 42  # This is allowed, but only 0-255
}

#better way
myfunc () {
    result="some_value"
}

myfunc
echo $result

#use command substitution
get_date () {
    date
}

today=$(get_date)
echo "Today is $today"


##Examples for logic gates
#create file named bio.txt

# Run AND test
if grep "gene" bio.txt && grep "protein" bio.txt; then echo "Both present"; fi


# Run OR test
if grep "bacteria" bio.txt || grep "RNA" bio.txt; then echo "One is present"; fi

# Run NOT test
if ! grep "virus" bio.txt; then echo "Virus not found"; fi



##Examples for the string comparisons

# Check if a Variable Is Empty
name=""
if [ -z "$name" ]; then
    echo "Name is empty."
fi

name="DNA"
if [ -n "$name" ]; then
    echo "Name is: $name"
fi

## Examples for image conversion
file="figure.jpg"



## Examples of combining conditions
# using logical AND
if [ -e "$file" ] && [ -r "$file" ]; then
    echo "File exists and is readable."
fi

# using logical NOT
if [ ! -x "$file" ]; then
    echo "File is not executable."
fi

# command and condition
if grep "DNA" bio.txt && [ -f "genes.txt" ]; then
    echo "Command succeeded and file exists."
fi


## example of grouping conditional logical operators
if [ \( -r "$file" -a -w "$file" \) ]; then
    echo "File is readable and writable."
fi


##example for fileinfo script
#create two files, directory and shell file
chmod +x fileinfo.sh
./fileinfo.sh genome
./fileinfo.sh goodfolder
./fileinfo.sh genes



##examples of integer conditionals
[ "6" \< "57" ]  # Returns FALSE (6 > 57 as strings)
[ 6 -lt 57 ]     # Returns TRUE (6 is less than 57 numerically)

# dont use < or > for numbers only  
[ 3 -lt 5 ]

#also used the double
[ "$a" -gt "$b" ]


# number example
num=$1
if [ "$num" -lt 10 ]; then
    echo "Number is less than 10"
else
    echo "Number is 10 or more"
fi

#check
chmod +x check_number.sh
./check_number.sh 7


## check with values
a=12
b=8

if [ "$a" -gt "$b" ]; then
    echo "$a is greater than $b"
fi

if (( b <= a )); then
    echo "$b is less than or equal to $a"
fi


##example for task-2
bash fileinfo.sh fileinfo highest.sh genes.txt


## Examples for the task-3
chmod +x tracedir
./tracedir filename

##Task-3 with some modifications
# to add trailing
if [ -d "$file" ]; then
  echo -e $tab$file/
else
  echo -e $tab$file
fi


#Examples for select
## select examples
select color in red green blue yellow
do
  echo "You selected $color"
  break
done


## PS3 example- task-5
PS3="Pick a color number: "
select color in red green blue; do
  echo "You picked $color"
  break
done

## example for initial code
DIR_STACK="/usr /home /bin"
selectd

