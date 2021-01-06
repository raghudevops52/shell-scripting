#!/bin/bash

read -p 'Enter fruit Name[orange|apple]: ' fruit_name

case $fruit_name in
  orange)
    echo "Oranges are Available"
    ;;
  apple)
    echo "Apples are not Available"
    ;;
esac
