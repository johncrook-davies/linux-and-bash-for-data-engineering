#!/bin/bash
declare -a array=("a" "b" "c" "d")

for i in "${array[@]}"
do
	echo "outputting the letter ${i}"
done
