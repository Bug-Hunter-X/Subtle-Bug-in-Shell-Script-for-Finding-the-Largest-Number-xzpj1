#!/bin/bash

# Improved script to find the largest number, handling non-numeric input gracefully.

input_file="numbers.txt"

largest_number=0

while IFS= read -r number; do
  #Validate if the number is numeric using regular expression
  if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Non-numeric value '$number' encountered. Skipping." >&2
    continue
  fi
  if [[ "$number" -gt "$largest_number" ]]; then
    largest_number="$number"
  fi

done < "$input_file"

echo "The largest number is: $largest_number"