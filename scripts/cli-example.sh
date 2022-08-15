#!/usr/bin/env bash

# call from command line with ./cli-example.sh -c [number of times to repeat phrase] -p [phrase to be repeated]

# Function that does the work
repeat_word() {
 for ((i=0; i<$1;i++)); do
  echo $2
 done
}

# Parse the input options
while [[ $# -gt 1 ]] # while there is one or more parameters
do
 key="$1"

 case $key in
  -c|--count) # get output for count
  COUNT="$2"
  shift
  ;;
  -p|--phrase) # get output for phrase
  PHRASE="$2"
  shift
  ;;
 esac
 shift
done

repeat_word "${COUNT}" "${PHRASE}"
