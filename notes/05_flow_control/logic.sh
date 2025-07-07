filename=$1
word1=$2
word2=$3

if grep $word1 "$filename" || grep $word2 "$filename"
then
    echo "$word1 and $word2 are both in $filename."
fi