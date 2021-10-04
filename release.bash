#!/usr/bin/env bash

# Release process documentation (rather that a script).

mv ~/Downloads/'WaypointsZA - ZA_Cape.cup.csv' ./

# Keep only the first 11 CSV columns (TODO: will fail with quoted and escaped commas! Then use LibreOffice).
cut -d, -f1-11 'WaypointsZA - ZA_Cape.cup.csv' ZA_Cape.cup.csv

./script/sanitise.py ZA_Cape.cup.csv  ZA_Cape.cup
cp ZA_Cape.cup ZA_Cape_$(date +\%Y\%m\%d).cup
# TODO: git diff, git commit, git push
# TODO: Release to GitHub
# TODO: Release to SoaringSpot
gpsbabel -i xcsv,style=script/name_cup.style -f ZA_Cape.cup   -o kml -F ZA_Cape_$(date +\%Y\%m\%d).cup.kml
# TODO: Release to Google Maps
