#!/bin/sh

for file in `find . -name *.dot`
do
    filepath=`dirname $file`
    target=$filepath/`basename $file .dot`
    echo "dot -Tpng $file -o $target.png"
    dot -Tpng $file -o $target.png
done
