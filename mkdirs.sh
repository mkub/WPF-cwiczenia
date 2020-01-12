#!/bin/bash

for path in **/*.ml ; do
    if echo $path | grep -v "input" &> /dev/null; then
        echo "Processing $path";
        name=`basename -s ".ml" $path`;
        mkdir "$(dirname $path)/$name";
        mv $path "$(dirname $path)/$name/rozwiazanie1.ml";
    fi;
done
