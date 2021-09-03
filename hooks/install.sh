#!/bin/bash

function findAndSymlink() {
	rootDir=$(git rev-parse --show-toplevel)

	for f in $(find ~+ -type f -name "$1"); do
		echo "Symlinked $f"
		ln -fs $f "$rootDir/.git/hooks/$1"
		break
	done
}

findAndSymlink pre-push
