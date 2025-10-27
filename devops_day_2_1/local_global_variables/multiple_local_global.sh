#!/bin/bash

function first() {
	local x="Hello Geek"
	local y="Enjoy"
	echo "Inside first function x=$x"
	echo "Inside first function y=$y"
}

x="Hello Romy"
y="good to see you!"
first
echo "Outside first function x=$x"
echo "Outside first function y=$y"
