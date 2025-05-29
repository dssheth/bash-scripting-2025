# To start background job of uncompressing file.zip
uncompress file.zip &

# Longer processes are saved in other files to view it later
diff hello.txt hello.txt.new > hellodiff &

# Special Characters 

echo 3 * 4 > 15 is a invalid inequality.
#output: file named 10 is created

# Using single quotes
echo '3 * 4 > 15 is a invalid inequality.'
echo '3 * 4 > 15' is a invalid inequality.
#output: '3 * 4 > 15 is a invalid inequality.'

# Using backslash-escaping
echo 3 \* 4 \> 15 is a invalid inequality.
#output: 3 \* 4 \> 15 is a invalid inequality.

# Use backslash to include double quotes
echo \"3 \* 4 \> 15\" is a valid inequality.
#output: "3 * 4 > 15" is a valid inequality.

# Single quotes inside quoted commands will not work.
echo 'Hello, it\'s nice to meet you biology researchers'     '
#output: no output as open quotation mark

# Remove the quotation marks to get the sentence
echo Hello, it\'s nice to meet you biology researchers   
#output: Hello, it's nice to meet you biology researchers     

# To avoid any other special character
echo 'Hello, it'\''s nice to meet you biology researchers'  
#output: Hello, it's nice to meet you biology researchers    

# Ending sentence with backslash to continue lines in terminal
echo There are lot of gene postions in the chromosomes\
    Many of them are important to study the disorders\
    We need to look at them carefully.

# Not closing the quote mark to continue lines in terminal
echo 'There are lot of gene postions in the chromosomes
    Many of them are important to study the disorders
    We need to look at them carefully.'

# Using help to know about the command pwd
help pwd

# Using help with partial name like 'ex' to get for all the information of all comands having ex in it
help 'ex*'

# To get screenful information at a time in help command of cd
help cd|more

