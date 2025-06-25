#!/bin/bash


##creating arrays
#indexed assignment
names[0]="hello"
names[1]="biology"
names[2]="science"


#compound assignment
names=([2]="science" [0]="hello" [1]="biology")

#auto-indexing
names=("hello" "biology" "science")   # indices: 0, 1, 2

#mixed-indexing
names=("hello" [5]="biology" "science")
# names[0]="hatter", names[5]="duchess", names[6]="alice"


## example to loop through array for User ID lookup
for i in $(cut -f1,3 -d: /etc/passwd); do
  array[${i#*:}]=${i%:*}
done

echo "User ID $1 is ${array[$1]}"
echo "There are ${#array[@]} user accounts."
