#!/bin/bash
# copyright (c) 2015 fclaerhout.fr, released under the MIT license.

DAEMON=/usr/bin/git
_UID=git

status() {
	if pgrep -u ${_UID} $(basename ${DAEMON})
	then
		echo "service is running"
	else
		echo "service is NOT running"
	fi
}

start() {
	sudo -u ${_UID} ${DAEMON} daemon\
		--enable=upload-archive\
		--export-all\
		--syslog\
		--user=git\
		--group=git\
		--reuseaddr\
		--base-path=/home/git\
		/home/git &
}

stop() {
	killall -u ${_UID} $(basename ${DAEMON})
}

for arg
do
	case $arg in
		status)
			status;;
		start)
			start;;
		stop)
			stop;;
		*)
			echo "Poorman gitd service manager"
			echo
			echo "Usage:"
			echo "  $0 (status|start|stop)..."
			exit 1
	esac
done
