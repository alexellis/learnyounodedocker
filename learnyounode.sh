#!/bin/bash
#echo 1 ... $1 
#echo 2 ... $2

if [ -z "$2" ]
then
	cmd="docker run -ti --rm -v $(pwd)/exercises:/home/learn/testcases/ alexellis2/learnyounodedocker \"$1\""
else
	cmd="docker run -ti --rm -v $(pwd)/exercises:/home/learn/testcases/ alexellis2/learnyounodedocker \"$1\" \"$2\""
fi

eval $cmd
