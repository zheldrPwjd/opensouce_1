#!/bin/bash
case $2 in
	'+') output=$[$1 + $3];;
	'-') output=$[$1 - $3];;
	'/') output=$[$1 / $3];;
	'%') output=$[$1 % $3];;
	'X') output=$[$1 * $3];;
esac

echo " Input : $@"
echo " Output : $output"
