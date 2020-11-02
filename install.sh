#!/bin/bash
export CODE=get-code
rm -rf /usr/bin/$CODE
touch /usr/bin/$CODE
cd script
ln -sf $(readlink -f get-code.sh) /usr/bin/$CODE
echo 'Now you can input "get-code" to get IDEA activation code in Git Bash command line.' 