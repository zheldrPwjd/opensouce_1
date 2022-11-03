#!/bin/bash
if ! [ -d files ]; then
        mkdir files
	cd files/
	touch file0.txt
	touch file1.txt
	touch file2.txt
	touch file3.txt
	touch file4.txt
	tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt
	mkdir files
	tar -xvf files.tar -C files
fi
exit 0
