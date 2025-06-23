#!/bin/bash

# example of previous chapter
if [ -n "$(echo $1 | grep '^-[0-9][0-9]*$')" ]; then
    howmany=$1
    shift
elif [ -n "$(echo $1 | grep '^-')" ]; then
    echo 'usage: highest [-N] filename'
    exit 1
else
    howmany="-10"
fi

filename=$1
sort -nr $filename | head $howmany


# image format conversion example
# Set default values
size=320
width=1
colour="-color black"
usage="Usage: $0 [-s N] [-w N] [-c COLOR] imagefile..."

# Parse options
while getopts ":s:w:c:" opt; do
  case $opt in
    s ) size=$OPTARG ;;
    w ) width=$OPTARG ;;
    c ) colour="-color $OPTARG" ;;
    \? ) echo $usage; exit 1 ;;
  esac
done

shift $(($OPTIND - 1))  # Skip parsed options

# Check if at least one image file was given
if [ -z "$@" ]; then
  echo $usage
  exit 1
fi

# Process files
for filename in "$@"; do
  ppmfile=${filename%.*}.ppm

  case $filename in
    *.gif ) giftopnm $filename > $ppmfile ;;
    *.tga ) tgatoppm $filename > $ppmfile ;;
    *.xpm ) xpmtoppm $filename > $ppmfile ;;
    *.pcx ) pcxtoppm $filename > $ppmfile ;;
    *.tif ) tifftopnm $filename > $ppmfile ;;
    *.jpg ) jpegtopnm -quiet $filename > $ppmfile ;;
    * ) echo "$0: Unknown filetype '${filename##*.}'"; exit 1 ;;
  esac

  outfile=${ppmfile%.ppm}.new.jpg

  pnmscale -quiet -xysize $size $size $ppmfile |
  pnmmargin $colour $width |
  pnmtojpeg > $outfile

  rm $ppmfile
done
