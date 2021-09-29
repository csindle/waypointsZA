#!/bin/bash

## Convert .cup files to .kml


FN="cap20b.cup"
gpsbabel -i xcsv,style=name_cup.style -f ${FN} -o kml -F ${FN}.kml

FN="gauteng18.cup"
gpsbabel -i xcsv,style=name_cup.style -f ${FN} -o kml -F ${FN}.kml

FN="South_Africa.cup"
gpsbabel -i xcsv,style=name_cup.style -f ${FN} -o kml -F ${FN}.kml

FN="TURNPOINTS-SANATS-2021.cup"
gpsbabel -i xcsv,style=name_cup.style -f ${FN} -o kml -F ${FN}.kml

#Potch2018Numbered.cup

