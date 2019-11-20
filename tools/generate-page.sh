#!/bin/bash
pwd=`pwd`
dir="$pwd/src/page-contents"
for filename in `cd ${dir};ls -1 ${filename}`; do
    echo $filename
    sed "/<!-- CONTENT -->/{
    s/<!-- CONTENT -->//g
    r ./src/page-contents/$filename
}" ./src/empty.html > ./src/pages/$filename
done
cp ./src/empty.html ./src/pages/empty.html 