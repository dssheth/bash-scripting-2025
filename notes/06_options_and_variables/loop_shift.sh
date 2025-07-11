while [ -n "$(echo $1 | grep '-')" ]; do
  case $1 in
    -a ) echo "Processing option -a";;
    -b ) echo "Processing option -b";;
    -c ) echo "Processing option -c";;
    * ) echo "usage: loop_shift.sh [-a] [-b] [-c] args not matched"; exit 1;;
  esac
  shift
done