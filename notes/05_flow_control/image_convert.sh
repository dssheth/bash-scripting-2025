for filename in "$@"; do
  pnmfile=${filename%.*}.ppm
  case $filename in
    *.jpg) exit 0 ;;
    *.tga) tgatoppm "$filename" > "$pnmfile" ;;
    *.xpm) xpmtoppm "$filename" > "$pnmfile" ;;
    *.pcx) pcxtoppm "$filename" > "$pnmfile" ;;
    *.tif) tifftopnm "$filename" > "$pnmfile" ;;
    *.gif) giftopnm "$filename" > "$pnmfile" ;;
    *) echo "procfile: $filename is an unknown graphic type"; exit 1 ;;
  esac

  outfile=${pnmfile%.ppm}.new.jpg
  pnmtojpeg "$pnmfile" > "$outfile"
  rm "$pnmfile"
done