.ONESHELL:
SHELL=bash

help:
	#
	#

test:
	@
	date -Iseconds
	realpath nmap-cron.sh

install:
	ln -sf `readlink -f mylocalnet.sh` /usr/local/bin/mylocalnet
	ln -sf `readlink -f nmap-cron.sh` /etc/cron.daily/nmap-cron.sh

uninstall:
	rm /usr/local/bin/mylocalnet
	rm /etc/cron.daily/nmap-cron.sh


