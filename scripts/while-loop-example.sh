#!/bin/bash

echo "How many loops?"
read LOOPS

COUNT=1
while [ $COUNT -le $LOOPS ]
do
	echo "outputting the number $COUNT"
	((COUNT++))
done
