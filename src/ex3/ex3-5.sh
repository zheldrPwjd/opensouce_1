#!/bin/sh
echo "프로그램을 시작합니다."
echo "함수 안으로 들어 왔음"

if [ -n "$1" ]
then
	command="$1"
	ls $command
else
	echo "기본 ls를 실행합니다"
	ls
fi
echo "프로그램을 종료합니다."
