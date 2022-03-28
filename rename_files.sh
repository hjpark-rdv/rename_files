#!/bin/bash

searchdir=./$1

targetdir=./$1_renew

mkdir $targetdir

startnum=1000

for entry in $searchdir/*

do

        #echo "$entry"

        filename="$entry"
        
        change1=$(echo $filename | sed "s,$searchdir/,,g") 
        #echo "change1 = $change1"
        #change1=$(echo $filename | sed 's,./rgb/,,g') 
        
        num_idx=$(echo $change1 | sed 's,.png,,g') 
        rename=$(expr $num_idx + $startnum)

        echo "copy from $entry -> $targetdir/$rename.png"
        cp $entry $targetdir/$rename.png

done

