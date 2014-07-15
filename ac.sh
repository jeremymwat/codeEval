#!/bin/bash
# quick auto git script

if  [ "$#" -ne 1 ] ;
then 
	echo "please provide a commit message"
else
	
echo "adding all"
git add -A

echo "committing"
git commit -am "$1"

echo "pushing"
git push 

fi
