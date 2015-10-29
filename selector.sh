#/bin/bash

learn=/usr/bin/learnyounode
mkdir -p ~/.config/learnyounode

if [ -z "$1" ]
then
	$learn list;
else
	if [ -z "$2" ]
	then
		echo "\"$1\"" > ~/.config/learnyounode/current.json
		$learn print
		echo "To verify your submission type: ./learnyounode.sh \"exercise name\" \"filename.js\""
	else
		echo "\"$1\"" > ~/.config/learnyounode/current.json
		#cat ~/.config/learnyounode/current.json
		echo "Selecting $1 then verifying with: $2"
		$learn verify ~/testcases/$2
	fi
fi
