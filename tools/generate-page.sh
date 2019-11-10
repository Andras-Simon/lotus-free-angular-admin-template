#!/bin/bash

FILE="$1"

if [ -z "$1" ]
  then
    echo "No argument supplied. Usage: generate-page.sh filename.html"
    exit 1;
fi

if [ ! -f "./src/page-contents/$FILE" ]; then
    echo "./src/page-contents/$FILE not found!"
    exit 1;
fi

sed "/<!-- CONTENT -->/{
    s/<!-- CONTENT -->//g
    r ./src/page-contents/$FILE
}" ./src/empty.html > ./src/pages/$FILE