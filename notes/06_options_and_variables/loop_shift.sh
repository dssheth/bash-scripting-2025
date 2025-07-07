while [ -n "$(echo $1 | grep '-')" ]; do
  case $1 in
    -a ) Processing option -a;;
    -b ) Processing option -b;;
    -c ) Processing option -c;;
    * ) echo "usage: alice [-a] [-b] [-c] args..."; exit 1;;
  esac
  shift
done