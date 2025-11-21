#!/bin/bash
if [ $(pwd) != "*/fish" ]; then
  echo "Please run this script from the fish directory."
  exit 1
fi

cp -r ./fish/ ~/.config/fish/
