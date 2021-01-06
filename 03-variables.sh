#!/bin/bash

# Variables will help you in times of replacing the values.

Course=AWS
echo Hello Raghu, Welcome to ${Course} Training
echo ${Course} training timings are 6AM IST
echo ${Course} training course covers shell scripting


## Declare a variable
a=10 # Number
aa=xyz # Characters
aaa=abc123 # String
a1=1.90 # Float

#  Observation, Shell does not bother about data types by default. Everything is a string


## Access the variable
# Print the data using echo command
echo a = $a

# Also use ${a} , this is must in some scenarios

echo a1 = ${a1}cm

## Summary , If you have any requirement of reusing the same value then declare it in variable.

# All the time we cannot hardcode the value to a variable. It should dynamically get the values. But How ?

# 1. Command Substitution

# Syntax : VAR=$(command)   or VAR=$(command1 | command2)  or VAR=$(command1 ; command2)

DATE=$(date +%F)

echo Today date is $DATE


# 2. Arithematic Substitution

ADD=$((1+3))
BIGEXPRESSION=$((1+2-3/4*5-6+7*8/9))
echo $BIGEXPRESSION

# This does not float values

