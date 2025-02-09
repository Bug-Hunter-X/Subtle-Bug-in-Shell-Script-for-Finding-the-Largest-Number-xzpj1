# Shell Script Bug: Finding the Largest Number

This repository demonstrates a common yet subtle bug in shell scripting when dealing with input validation.  The script `bug.sh` attempts to find the largest number within a file named `numbers.txt`. However, it fails gracefully when the input file contains non-numeric values, leading to incorrect results or errors.

The solution, provided in `bugSolution.sh`, addresses the issue by implementing robust input validation to handle non-numeric data and prevent unexpected behavior.