#!/bin/bash

# If you  assign a name to a data , then it is called as variable
# If you assign a name to commands , then it is called as function

# Declare a function

function abc() {
  ## Put all the commands
  echo This is function abc
}

abc1() {
  echo This is function abc1
}

abc2() {
  echo First Argument = $1
  echo Second Argument = $2

  echo Name of the Script =  $0 # $0 is still the name of the script , not the name of a function.

  echo All Arguments = $*
  echo All Arguments = $@

  echo Number of Arguments =  $#
}

abc3() {
  echo Hello
  return 0
  echo Bye
}

## Main Program
## Call the function
abc
abc1

# abc looks like a command, since you are executing that as a command , function is a one type of command.

# Any command will have its own arguments, functions have also its own arguments.

abc2 10 200

# Variables of main program can be accessed in function and vice-versa
# Variables of main program can be overwritten by function and vice-versa

# Since function behave like a commands it also will have exit status and that status numbers remains same, But will be using with a command called as retrun.
# Exit usage inside function still exits the scripts but not the function.

abc3