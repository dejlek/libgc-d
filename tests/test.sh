#!/bin/bash

for x in `find . -type f -regex .*\.d`; do
    rdmd -debug -gc -gs -I.. -L-lgc $x;
done;
