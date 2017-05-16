#!/bin/bash 
 
if [ $1="-b" ]; then
    # build 
    gulp build
else
    # Update pedropalomo.github.io.src
    
    
    # Update pedropalomo.github.io
    cp -rf _site/* ../pedropalomo.github.io/
     
    cd ../pedropalomo.github.io/
    
    git add -A
    
    git commit -a -m "update sources"
    
    git push -u origin master

fi