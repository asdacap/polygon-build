#!/bin/bash

if [ -d "$1" ]; then
    actualpath=$(realpath $1)
    docker run --rm -v $actualpath:/contest/ asdacap/polygon-build
else
    echo "Directory not found"
fi
