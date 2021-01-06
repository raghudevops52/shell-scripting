#!/bin/bash

# Limitations of case statement is , It does only string comparision.
# ex a == a

## This is multi line comments
<<EOF

# If can be found in three forms.

# Simple IF

if [ expression ]
then
  commands
fi

If the expression is true then if executes those commands.

# If Else

if [ expression ]
then
  commands 1
else
  commands 2
fi

If expression is true then commands 1 will execute if false then commands 2 will execute

# Else If

if [ expression 1 ]; then
  commands 1
elif [ expression 2 ]; then
  commands 2
else
  commands 3
fi

EXPRESSIONS:
--------------

expressions can be categorized in three types
  1. String  comparisons
      Operators : == , !=
      [ a == b ], [ $COMPONENT == "catalogue" ]

  2. Numerical Comparisons
      Operators: -eq , -ne , -gt, -ge, -lt, -le
      [ 1 -eq 2 ]

  3. File Tests
      Refer : https://tldp.org/LDP/abs/html/fto.html

EOF

read -p 'Enter the course name: ' name

if [ "$name" == "DevOps" ]; then
  echo "Welcome to DevOps Training"
elif [ "$name" == "AWS" ]; then
  echo "Welcome to AWS Training"
fi




