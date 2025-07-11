## examples for  command-line options
bash hello welcome hi
# welcome is $1 and hi is $2

# if use options
bash hello -o welcome hi


# example for the shift command
#created file shift.sh
echo "First argument: $1"
shift
echo "Now first argument: $1"


#example for the loop and case used script
bash ./loop_shift.sh -a -b test.txt
#Processing option -a
#Processing option -b


## example for options with arguments
#created file options.sh
while [ -n "$(echo $1 | grep '-')" ];do 
    case $1 in
        -a) echo "Hello" ;;
        -b) echo "Your Name: $2"
            shift ;;
        -c) echo "The files are ready." ;;
        *) echo "usage: albums.txt [-a] [-b arg] [-c] args...";exit 1;;
    esac
    shift
done
# Remaining args can be treated as input files
echo "Shifting done and the files are: $@"

# Run with
bash options.sh -a -b Alice -c albums.txt


## example for getopt
#created file getopt.sh
while getopts ":ab:c" opt; do
    case $opt in
        a ) echo "Hello! The option 'a' is working"
        ;;
        b ) echo "The name is: $OPTARG"
            #$OPTARG is the option's argument
        ;;
        c ) echo "The files are ready."
        ;;
        \? ) echo "usage: alice [-a] [-b barg] [-c] args"
            exit 1
    esac
done
shift $(($OPTIND - 1))

# Remaining args can be treated as input files
echo "Shifting done and the files are: $@"

# Run with
bash getopt.sh -abalice -c albums.txt highest.sh


##examples for declare
#for declare -r
declare -r pi=3.14
pi=3.1415         # Error: cannot assign to readonly variable
unset pi          # Error: cannot unset readonly variable

#same for readonly 
readonly pi=3.14

# for declare -x: exproting variables
declare -x PATH="/usr/bin:/bin"

# declare for functions
declare -f
declare -F

# for local variables with declare
myfunc() {
  declare localname="hello"
  echo $localname
}
myfunc
echo $localname  # Empty: variable not visible outside


## example of arithmetic without $
x=10
y=5
echo $(( x + y ))      # Output: 15
echo $(( x * y ))      # Output: 50


## example for using double quotes

echo "$(( (365 - $(date +%j)) / 7 )) weeks until the New Year"


## example for the ++
i=0
echo $(( i++ ))  # Output: 0 (then increments to 1)
echo $i          # Output: 1

echo $(( ++i ))  # Output: 2 (increments first)
echo $i          # Output: 2

##example for the base-N numbers
echo $((16#1F))  # 31
echo $((2#1101))  # 13

#without base#
echo $((1101))     # ➤ Interpreted as decimal 1101


## using the ndu script
bash ndu . ~ CH-6-bash


##example for the pushd/popd
pushd /home /guest /Desktop /CH-6_bash /

pushd +2

popd +1

#example to check the limit in getNdirs
bash limit_getNdirs.sh pushd +5

## example for arithmetic for loops
#infinite loop
for (( ; ; ))
do
  read var
  [ "$var" = "." ] && break
done

##examples of array
echo ${greet[2]}

# values in indices in array
echo ${!greet[@]}

#length of element or find values
echo ${#greet[i]}


## the selection sort to bubble sort
#Created bubblesort.sh
values=(39 5 36 12 9 3 2 30 4 18 22 1 28 25)
numvalues=${#values[@]}

for (( i=0; i<numvalues-1; i++ )); do
  for (( j=0; j<numvalues-i-1; j++ )); do
    if (( values[j] > values[j+1] )); then
      temp=${values[j]}
      values[j]=${values[j+1]}
      values[j+1]=$temp
    fi
  done
done

for v in "${values[@]}"; do echo -n "$v "; done
echo

