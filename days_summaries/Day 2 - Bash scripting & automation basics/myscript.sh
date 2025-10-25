#! /bin/bash

# ECHO COMMAND
#echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
#NAME="Dmytro"
#echo "My name is $NAME"
#echo "My name is ${NAME}"

# USER INPUT
#read -p "Enter your name: " NAME;
#echo "Hello $NAME, nice to meet you!"

#SIMPLE IF STATEMENT
NAME="Bob"
#if [ "$NAME" == "Dima" ];
#then 
#	echo "Your name is Dmytro"
#fi

#if [ "$NAME" == "Dima" ];
#then
#        echo "Your name is Dmytro"
#else
#	echo "Your name is NOT Dmytro"
#fi

# ELSE-IF (elif)
#if [ "$NAME" == "Dima" ];
#then
#        echo "Your name is Dmytro"
#elif [ "$NAME" == "Jack" ];
#then
#	echo "Your name is Jack"
#else
#       echo "Your name is NOT Dmytro or Jack"
#fi

#NUM1=31
#NUM2=5
#if [ "$NUM1" -gt "$NUM2" ];
#then
#	echo "$NUM1 is greater than $NUM2"
#else
#	echo "$NUM1 is less than $NUM2"
#fi

#FILE CONDITIONS
#FILE="test.txt"

#if [ -e "$FILE" ];
#then
#	echo "$FILE exists"
#else
#	echo "$FILE does not exit"
#fi

#CASE STATEMENT
#read -p "Are you 21 or over? Y/N " ANSWER
#case "$ANSWER" in
#	[yY] | [yY][eE][sS])
#		echo "You can have a beer :)"
#		;;
#	[nN] | [nN][oO])
#		echo "Sorry, no drinking"
#		;;
#	*)
#		echo "Please enter y/yes or n/no"
#		;;
#esac

# SIMPLE FOR LOOP
#NAMES="Brad Kevin Alice Mark"
#for NAME in $NAMES
#do
#	echo "Hello $NAME"
#done

# FOR LOOP TO RENAME FILES
#FILES=$(ls *.txt)
#NEW="new"
#for FILE in $FILES
#do
#	echo "Renaming $FILE to new-$FILE"
#	mv $FILE $NEW-$FILE
#done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
#LINE=1
#while read -r CURRENT_LINE
#do
#	echo "$LINE: $CURRENT_LINE"
#	((LINE++))
#done < "./new-1.txt"

#FUNCTION
#function sayHello() {
#	echo "Hello world!"
#}

#sayHello

#FUNCTION WITH PARAMS
#function greet() {
#	echo "Hello, I am $1 and I am $2"
#}

#greet "Dmytro" "21"

# CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"
