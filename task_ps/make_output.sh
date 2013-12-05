#!/bin/bash -x

DEV=$1
DEV_S=${DEV:0:3}

OPTS=$2

if [ "$DEV_S" = "jpe" ]
then
    EXT=jpg
else
    if [ "$DEV_S" = "png" ]
    then
        EXT=png
    else
        exit -1
    fi
fi

DIR=$DEV
mkdir $DIR

for RES in 36 72 144 200 300 600 1200
do
    ghostscript -sOutputFile="$DIR"/usaf1951_"$DEV"_"$RES".$EXT -r$RES -sDEVICE=$DEV $OPTS -dBATCH -dNOPAUSE usaf1951.ps
done
