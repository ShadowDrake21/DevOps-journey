#!/bin/bash
function first () {
	local x="HelloNew"
	echo "Inside first function x=$x"
}

first
echo "Outside first function x = $x"
