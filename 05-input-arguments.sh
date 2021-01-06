#!/bin/bash

# Reading the input from arguments can be done through special variables.
# Special Variables for inputs are , $0 - $n , $*, $@, $#

echo First Argument = $1
echo Second Argument = $2

echo Name of the Script =  $0

echo All Arguments = $*
echo All Arguments = $@

echo Number of Arguments =  $#
