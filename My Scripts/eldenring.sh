#!/bin/bash

echo "welcome tarnished.please select your starting class:
1 - Samurai
2 - Prisoner
3 - prophet"

read class

case $class in

	1)
		type="samurai"
		hp=10
		attack=20
		;;
	2)
		type="prisoner"
		hp=20
		attack=4
		;;
	3)
		type="prophet"
		hp=30
		attack=4
		;;
esac

echo "You chosen the $type class. Your Hp is $hp and your attack is $attack."


echo "The first beast battle is starting"

#First beast battle

beast=$(( $RANDOM % 2))

echo "You are first beast approches.prepare to battle.pick a number between 0-1. (0/1)"

read tarnished

	if [[ $beast == $tarnished ]]; then
		echo "Beast VANQUISHED!! Congrats fellow tranished"
	else
		echo "You Died"
	exit 1

	fi

sleep 2

#second battle

echo "The second best battle is starting"

echo "You are second beast approches .prepare to battle. pick a number between 0-9 (0/9)"

read tarnished

beast=$(( $RANDOM % 10))

	if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then

		echo"Beast VANQUISHED!!"
	elif [[ $USER == "bernard" ]];then

		echo "Hey,Bernard always wins. You Vanquished beast."
	else
		echo "You Died"
	exit 1

	fi
sleep 2