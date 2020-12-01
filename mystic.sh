#!/usr/bin/env bash

: '
Input: The unwanted number
This script will give an error if the random number generated is equal to the unwanted number specified by the user.
'

# Generate a random number up to 100
n=$(( RANDOM % 100))

if [[ n -eq $1 ]]; then
  # let user know something went wrong via output stream
  echo "Something went wrong."

  # write what went wrong to the error stream
  >&2 echo "The result is equal to the unwanted number: $1"

  # exit the program with return code 1 to signal error
  exit 1
fi

echo "Everything is fine, no unwanted value."
# by default the return code is 0 (sinalling a successful run)
