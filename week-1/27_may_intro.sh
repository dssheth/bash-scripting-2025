# Matches zero or more characters in a filename.
ls *.txt

# Matches exactly one character.
ls file.?

# Matches any one character inside the brackets.
ls file.[123]

# Matches all lowercase letters
ls file.[a-z]

# Brace expansion for sequence of numbers.
echo {1..7}
#output: 1 2 3 4 5 6 7

# Brace expansion for sequence of letters.
echo {a..h}
#output: a b c d e f g h

# Brace expansion with wildcards expansion with files having c and m at end after a period.
ls *.{c,m}

# Copy the input to the output using UNIX utility
cat 

# To see details about large number of files in a directory using Pipeline.
ls -l|more

# To see sorted listing of file "Gene_numbers" at a time
sort < Gene_numbers |more

# To print the list of file
sort < Gene_numbers |lp


