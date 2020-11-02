#!/bin/bash
export CODE=get-code
execFile=get-code.sh

rm -rf /usr/bin/$CODE
touch /usr/bin/$CODE
cd script
path=$(readlink -f ./)
if [ -f $path/$execFile ]; then
  sed -i "s@python PATH@python $path@" $path/$execFile
  echo Initialize $execFile successfully.
else
  echo $execFile not found!
fi
ln -sf $path/get-code.sh /usr/bin/$CODE
echo 'Now you can input "get-code" to get IDEA activation code in Git Bash command line.' 