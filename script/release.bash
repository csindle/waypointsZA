#!/usr/bin/env bash

# Release process documentation (rather that a script).

set -e
set -x

## Commands (note the run dir):
# ./script/sanitise.py 'WaypointsZA - ZA_Cape.cup.csv' ZA_Cape.cup
# ./script/release.bash $(date +\%Y\%m\%d)

## Version / timestamp:
DATE=$(date +%Y-%m-%d)

## Output directory (and git release tag):
TAG="v$DATE"

mkdir -p ${TAG}

git tag -f ${TAG}

SRC="ZA_Cape.cup"

cp -f ${SRC} ${TAG}/ZA_Cape_${DATE}.cup       # For official GitHub release
cp -f ${SRC} ${TAG}/ZA_Cape_${DATE}.cup.csv   # For GitHub CSV Gist
gpsbabel -i xcsv,style=script/name_cup.style -f ${SRC} -o geojson -F ${TAG}/ZA_Cape_${DATE}.geojson   # For GitHub Map Gist
gpsbabel -i xcsv,style=script/name_cup.style -f ${SRC} -o kml     -F ${TAG}/ZA_Cape_${DATE}.cup.kml   # For Google Maps

echo "Output files in ${TAG}"

# local: git commit, git push
# GitHub: Create a tagged Release with datestamped .cup file
# SoaringSpot: Upload and replace
