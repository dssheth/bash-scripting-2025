finfo () {
  if [ ! -e "$1" ]; then
    echo "file $1 does not exist."
    return 1
  fi

  if [ -d "$1" ]; then
    echo -n "$1 is a directory that you may "
    if [ ! -x "$1" ]; then
      echo -n "not "
    fi
    echo "search."
  elif [ -f "$1" ]; then
    echo "$1 is a regular file."
  else
    echo "$1 is a special type of file."
  fi

  if [ -O "$1" ]; then echo "you own the file."; else echo "you do not own the file."; fi
  if [ -r "$1" ]; then echo "you have read permission."; fi
  if [ -w "$1" ]; then echo "you have write permission."; fi
  if [ -x "$1" ] && [ ! -d "$1" ]; then echo "you have execute permission."; fi
}

for filename in "$@"; do
  finfo "$filename"
  echo
done