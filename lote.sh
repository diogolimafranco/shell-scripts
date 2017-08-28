#!/bin/bash
root=`pwd`
for i in `find . -type d`
  do
    cd $root
    cd $i
    jpg=`ls *.jpg`
    if [ $jpg ]; then
      mkdir optimized
      for f in $jpg
        do
          cp $f optimized/$f
        done
    fi
   done
