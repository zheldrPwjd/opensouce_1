#!/bin/bash
search() {

	echo "#전화번호 검색#"
	read -p "이름 입력: " name

	if [ -z "$name" ]; then
		echo "이름을 입력하지 않았습니다. 메뉴로 돌아갑니다. 엔터를 입력하세요!"
		read
		return 
	fi

	result=$(grep "$name" ~/script/DB.txt)
	if [ -z "$result" ]; then
		echo "등록된 이름이 없습니다. 메뉴로 돌아갑니다. 엔터를 입력하세요!"
		read
		return 
	fi

	echo "결과: $result"
	echo "메뉴로 돌아갈려면 엔터를 입력하세요!"
	read
}

display_menu() {
	
	echo "#전화번호부 프로그램#"
	echo "1. 검색"
	echo "---------------------"
	echo -n "입력(0. 종료): "
	read
}

while true; do
	display_menu
	case $REPLY in
		0) echo "프로그램을 종료합니다."
			exit 0;;
		1) search;;
		*) echo "잘못 입력하셨습니다!"; read;;
	esac
done
