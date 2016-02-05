#!/bin/sh
for f in *.svg; do ~/Depot/SVG-Inventory-Icons/reduce.sh $f; done
for f in *.svg; do head --lines 5 $f > tmp.svg; echo "</svg>" >> tmp.svg; mv -f tmp.svg $f; done
for f in *.svg; do sed -e "5s|id=.*>|/>|g" $f > tmp.svg; mv -f tmp.svg $f; done
