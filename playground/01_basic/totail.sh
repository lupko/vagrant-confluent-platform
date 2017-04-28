#!/usr/bin/env bash

file=/tmp/totail.txt

while true; do
    echo This is just to say >> ${file}
    echo >> ${file}
    echo I have eaten >> ${file}
    echo the plums >> ${file}
    echo that were in >> ${file}
    echo the icebox >> ${file}
    echo >> ${file}
    echo and which >> ${file}
    echo you were probably >> ${file}
    echo saving >> ${file}
    echo for breakfast >> ${file}
    echo >> ${file}
    echo Forgive me >> ${file}
    echo they were delicious >> ${file}
    echo so sweet >> ${file}
    echo and so cold >> ${file}
    sleep 1
done

