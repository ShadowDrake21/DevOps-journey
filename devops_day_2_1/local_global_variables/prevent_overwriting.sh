#!/bin/bash
export PS4='+ ${BASH_SOURCE}:${LINENO}:${FUNCNAME[0]}: '
set -x
x="Hello!!!"
echo "Outside first function x=$x"
function first() {
	declare -r x="Hello Geek"
}
set +x

first
echo "After overwriting, x=$x"
