#!/bin/bash
if ! [ -f DB.txt ]; then
	touch DB.txt
fi
DB="DB.txt"
echo "$1 $2" >> $DB
