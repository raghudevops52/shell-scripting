#!/bin/bash

# Majorly needed loop commands are
# 1. for    (inverse logic of for is select loop)
# 2. while  (inverse logic of while is until loop)


for course in DevOps AWS AZURE IOT; do
  echo "Welcome to $course Training"
  case $course in
    DevOps)
      echo Timings are 6AM EST ;;
    AWS)
      echo TImings are 7AM EST ;;
    AZURE)
      echo Timings are 10AM EST ;;
    IOT)
      echo Timings are 6AM EST ;;
  esac
  sleep 1
done

read -p 'Enter number to ping check: ' number
while [ $number -gt 0 ] ; do
  ping -c1 google.com
  number=$(($number-1))
done

# there are loop control commands, break and continue. Try to explore

# Declarative Style

user sample

