#!/bin/bash

# Prompting the input can be done with read command

read -p 'Enter your Name: ' name

echo "Your Name = $name"

# But this is mostly not used in automation. Prompting needs a user input and there wont be any one to type the input to read command in automation.

