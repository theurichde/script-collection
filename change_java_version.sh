#!/bin/bash

java1_7="jdk1.7.0_79"
java1_8="jdk1.8.0_144"
current_java=${HOME}/.software/current_java

if [ ! -e ${HOME}/.software/current_java ]; then
	echo "${HOME}/.software/current_java does not exist! Exiting";
	exit 1
fi

if [ "$(readlink ${HOME}/.software/current_java)" -ef "${HOME}/.software/${java1_7}" ]; then
	echo "Changing current_java to ${java1_8}"
	rm $HOME/.software/current_java;
	ln -s ${HOME}/.software/${java1_8} ${current_java};
elif [ "$(readlink ${HOME}/.software/current_java)" -ef "${HOME}/.software/${java1_8}" ]; then
	echo "Changing current_java to ${java1_7}"
	rm $HOME/.software/current_java;
	ln -s ${HOME}/.software/${java1_7} ${current_java};
else
	echo "That did not work!"
fi

exit 0;
