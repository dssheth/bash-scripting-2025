filename=$1
extension=${filename##*.}
pnmfile=${filename%.*}.pnm
outfile=${filename%.*}.jpg

if [ -z "$filename" ]; then
    echo "procfile: No file specified"
    exit 1
fi

if [ "$extension" = jpg ]; then
    exit 0
elif [ "$extension" = tga ]; then
    tgatoppm "$filename" > "$pnmfile"
elif [ "$extension" = xpm ]; then
    xpmtoppm "$filename" > "$pnmfile"
elif [ "$extension" = pcx ]; then
    pcxtoppm "$filename" > "$pnmfile"
elif [ "$extension" = tif ]; then
    tifftopnm "$filename" > "$pnmfile"
elif [ "$extension" = gif ]; then
    giftopnm "$filename" > "$pnmfile"
else
    echo "procfile: $filename is an unknown graphics file"
    exit 1
fi

pnmtojpeg "$pnmfile" > "$outfile"
rm "$pnmfile"
