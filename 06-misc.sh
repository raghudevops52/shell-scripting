#!/bin/bash

# Quotes

# What happens with out quotes in inputs
# echo *
# * will not be printed as * , It does something else because it is a special character.
# There are some special character in the system. 
# a-z, 0-9, _(underscore), Only these characters are normal characters in shell.. Remaining are the special character and have a special behaviour when you use them.
# Sometimes we need to use these characters, yet we wanted to use them as normal character like our echo command * input. Wanted to print * character. This can be done by disabling the speciality.

# How to disable the speciality 
# 1. Esc character (\)
# 2. Quotes ( '' "")

# echo \*
# echo '*'
# echo "*"

# Dif b/w single and double quotes.

# Single quote is strict quoting which does not consider any special characters inside it
# Double quote is liberal quoting which allow very few characters as special characters, mainly $

a=10
echo 'a = $a'
echo "a = $a"


# Redirectors

# > output redirector sends output to a file (STDOUT & STDERR)
# < input redirector takes  input from a file (STDIN)

# Output comprises of two things, STDOUT & STDERR
# > redirector only redirects STDOUT , Also can be given as 1>
# 2> redirects the error to a file

ls -ld /boot /boot1 >/tmp/out 2>/tmp/err

# Above command will redirect output to /tmp/out file and redirect error to /tmp/err file

# Some cases we need STDOUT & STDERR to same file
ls -ld /boot /boot1 &>/tmp/out

# Redirector (>) overwrite the content of the file which is getting redirected. In some cases we need to append the content rather than overwriting the content.

# Using >> symbol will append the content

# Some times we are least bothered about the output, We dont want any output neither  printing on the screen nor on the file.
# Can be done by nullifying , which is redirecting to nullifier system file (/dev/null)


# Exit Status

# Exit status is a number and every command after its execution it returns the state in a form a number

# Number ranges from 0- 255
# 0 - Success
# 1-255 -> Partial Success / Partial Failure / Complete Failure

# Usually system uses the numbers from 126+. Due to that it is recomended to use the values from 1-125

# that exit status number will be kept in a special variable (?). We can refer that variable using $?, print the number using echo $?


exit 100
