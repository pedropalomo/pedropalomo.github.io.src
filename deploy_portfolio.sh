#!/bin/bash 
 
if test "$1" = "-b"
then
# build 
gulp build
fi


# Update pedropalomo.github.io.src
git add -A
git commit -a -m "update sources"
git push -u origin master

# Update pedropalomo.github.io
cp -rf _site/* ../pedropalomo.github.io/
cd ../pedropalomo.github.io/
git add -A
git commit -a -m "update sources"
git push -u origin master

