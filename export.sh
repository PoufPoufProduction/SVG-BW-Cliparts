#!/bin/sh

rm -rf ../.tmp
mkdir ../.tmp

for f in */*.svg; do
	inkscape $f -e ../.tmp/`basename -s .svg $f`.png -d 72 -h 150 -w 150
done

montage -tile 20x -geometry +0+0 ../.tmp/* export.png
