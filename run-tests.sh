#!/bin/sh

if [ $1x == "x" ]; then
	echo Usage: $0 ip-addr
	exit -1
fi

ssh root@$1 cat /etc/build > ptest.log
ssh root@$1 ptest-runner >> ptest.log
