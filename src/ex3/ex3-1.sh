#!/bin/bash
hello="Hello world"
read n
for((i=0;i<n;i++))
do
	echo $hello
done
exit 0
