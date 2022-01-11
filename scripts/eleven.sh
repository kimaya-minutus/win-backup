#!/bin/bash
for ARG in "$*"; do     
echo $ARG
done

echo "There are $# arguments"

for ARG in "$@"; do
echo $ARG
done

