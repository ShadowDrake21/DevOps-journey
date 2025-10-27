#!/bin/bash

x="Hello!"
echo "Outside first function x=$x"
function first() {
	x="Hello Geek"
}

first
echo "After overwriting, x=$x"
