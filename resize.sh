#!/usr/bin/bash

shopt -s nullglob
for f in *.jpg; do
   convert "$f" -resize '1000x1000>' -quality 75 -set filename:new "%t" "%[filename:new].jpg"
done

shopt -s nullglob
for f in *.jpg; do
   convert "$f" -set filename:new "%t-thumb" -define jpeg:size=800x800 -thumbnail '500x500>' -background white -gravity center -extent 500x500  "%[filename:new].jpg"
done
