#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage:"
	echo "viewall dir1 dir2"
	exit 1
fi

find $1 $2 -type f | xargs -d '\n' sha1sum|sort -k 1|uniq -D -w 40

