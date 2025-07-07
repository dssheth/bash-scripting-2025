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
