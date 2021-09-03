#!/bin/bash

#ln -s ../../hooks/pre-push ../.git/hooks/pre-push

function findAndSymlink() {
	for f in $(find ~+ -type f -name "$1"); do
		echo "Symlinked $f"
		ln -s $f "../.git/hooks/$1"
		break
	done
}

findAndSymlink pre-push
