#!/bin/sh
Q="리눅스가 재미있나요? (yes or no)"
echo $Q
read Q
case "$Q" in
	yes)
		echo "yes";;
	no)
		echo "no";;
	*)
		echo "yes or no 로 입력해 주세요.";;
esac
exit 0
