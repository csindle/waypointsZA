#!/usr/bin/env bash

# Release process documentation (rather that a script).

set -e

./script/sanitise.py 'WaypointsZA - ZA_Cape.cup.csv' ZA_Cape.cup

### Outputs: ###

# Version / timestamp:
DATE=$(date +\%Y\%m\%d)

cp -f ZA_Cape.cup ZA_Cape_${DATE}.cup    # For SoaringSpot
cp -f ZA_Cape.cup ZA_Cape_${DATE}.cup.csv   # For GitHub Gist
gpsbabel -i xcsv,style=script/name_cup.style -f ZA_Cape.cup -o geojson -F ZA_Cape_${DATE}.geojson   # For GitHub Gist
gpsbabel -i xcsv,style=script/name_cup.style -f ZA_Cape.cup -o kml     -F ZA_Cape_${DATE}.cup.kml   # For Google Maps


# TODO: git diff, git commit, git push
# TODO: Release to GitHub
# TODO: Release to SoaringSpot
# TODO: Release to Google Maps, GitHub Gists
