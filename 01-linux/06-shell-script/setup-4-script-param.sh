#!/bin/bash
######## Script Parameters or Terminal Script Arguments ######

echo "all params passed: $*"
echo "number of params passed: $#"

echo "user: $1" # input passed from terminal, but not input asked by the code script itself
echo "group: $2"

# usage:
# $ ./setup-4-script-param.sh pk admin