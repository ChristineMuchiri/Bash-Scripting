#!/bin/bash
function sys_info {
echo "Sys Info Menu:"
echo "1.  Currently logged user"
echo "2.  Your shell directory"
echo "3.  Home directory"
echo "4.  Os name $ version"
echo "5.  Current working directory"
echo "6.  Number of users logged in"
echo "7.  Show all available shells in your system"
echo "8.  Hard disk information"
echo "9.  Cpu information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running process"
echo "13. Exit"
read -p "Choose your option: " option

case $option in
	1)
		w
		;;
	2)
		pwd
		;;
	3)
		echo ~
		;;
	4)
		cat /etc/os-release
		;;
	5)
		pwd
		;;
	6)
		awk -F: '{print $1}' /etc/passwd
		;;
	7)
		echo "Available shells: "
		cat /etc/shells
		;;
	8)
		echo "Hard disk info:"
		df -h
		;;
	9)
		echo "Cpu info: "
		lscpu
		;;
	10)
		echo "Memory info: "
		free -h
		;;
	11)
		echo "Mounted file systems:"
		mount
		;;
	12)
		echo "Current running processes:"
		ps aux
		;;
	13)
		exit 1
esac
}
sys_info
read -p "Continue (y/n): " cont

case $cont in
	y)
		sys_info

		;;
	n)
		exit 1
esac
