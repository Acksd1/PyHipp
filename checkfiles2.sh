#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==========================================================="
echo "Start Times"

for f in *-slurm*.out; do
    echo "==> $f <=="
    grep "time.struct_time" "$f" | head -n 1
done

echo ""
echo "End Times"
tail -n 5 *-slurm*.out


echo "#==========================================================="


