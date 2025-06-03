#!/bin/bash

# To determine which shell you are using
echo $SHELL

# To find out if bash exists on your system
bash

# To see bash version
echo $BASH_VERSION

# To find location of bash
which bash
grep bash /etc/passwd | awk -F: '{print $7}' | sort -u

# To exit the terminal and close
exit

# To save date in a folder called now
date > now

### Try It:

1. Create a file with `echo "Test" > test.txt`.
2. Append to it with `echo "More" >> test.txt`.
3. View the file with `cat test.txt | grep Test`.


# Quoting example
echo 3 + 3 > 5 is a invalid inequality.

echo '3 + 3 > 5 is a invalid inequality.'
echo '3 + 3 > 5' is a invalid inequality.

#use the more command to show one screenful at a time by typing
help cd | more.

### Try It Yourself

1. Run `history` to view your command history.
2. Use `!3` to rerun the third command in your history.
