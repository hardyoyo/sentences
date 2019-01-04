#!/bin/bash
filename=$1
if [ -f "$filename" ]; then
  strings $filename | java -jar sentences.jar
else
  echo "File does not exist"
fi
