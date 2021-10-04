#!/usr/bin/env bash


# TODO: Keep only the first 11 CSV columns.
./script/sanitise.py ZA_Cape.cup.csv  ZA_Cape.cup
cp ZA_Cape.cup ZA_Cape_$(date +\%Y\%m\%d).cup
# TODO: git diff, git commit, git push
# TODO: Release to GitHub
# TODO: Release to Google Maps
# TODO: Release to SoaringSpot
gpsbabel -i xcsv,style=script/name_cup.style -f ZA_Cape.cup   -o kml -F ZA_Cape_$(date +\%Y\%m\%d).cup.kml
