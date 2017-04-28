#!/usr/bin/env bash

file=/tmp/totail.txt

while true; do
    echo Hammer Time! >> ${file}
    sleep 0.01
    echo "Can't touch this!" >> ${file}
done
