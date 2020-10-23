##!/bin/bash -x
area=$((2*(60+40)))
totalarea=$((area*25))
awk "BEGIN {print $totalarea/43560}"
