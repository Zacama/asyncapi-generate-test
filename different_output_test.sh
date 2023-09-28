#!/bin/bash

files=(1 2 3 4)

for file in "${files[@]}"
do
    asyncapi generate fromTemplate asyncapis/$file.yaml @asyncapi/html-template --param singleFile=true outFilename=$file.html --output ./generate/$file --force-write &
done
wait
