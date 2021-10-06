#!/usr/bin/env bash

# Release process documentation (rather that a script).

set -e

## After running:
#./script/sanitise.py 'WaypointsZA - ZA_Cape.cup.csv' ZA_Cape.cup

# Output directory
OD=$1

mkdir -p ${OD}

# Version / timestamp:
DATE=$(date +\%Y\%m\%d)

cp -f ZA_Cape.cup ${OD}/ZA_Cape_${DATE}.cup    # For SoaringSpot
cp -f ZA_Cape.cup ${OD}/ZA_Cape_${DATE}.cup.csv   # For GitHub Gist
gpsbabel -i xcsv,style=script/name_cup.style -f ZA_Cape.cup -o geojson -F ${OD}/ZA_Cape_${DATE}.geojson   # For GitHub Gist
gpsbabel -i xcsv,style=script/name_cup.style -f ZA_Cape.cup -o kml     -F ${OD}/ZA_Cape_${DATE}.cup.kml   # For Google Maps

# TODO: git diff, git commit, git push
# TODO: Release to GitHub
# TODO: Release to SoaringSpot
# TODO: Release to Google Maps, GitHub Gists
