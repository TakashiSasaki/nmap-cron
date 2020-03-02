#!/bin/sh

nmap_cron_target=`mylocalnet`
nmap_cron_dir=/mnt/nmap
nmap_cron_filename=`date -Iseconds`.xml
nmap_cron_path=${nmap_cron_dir}/${nmap_cron_filename}
echo ${namp_cron_path}
if [ -n "$PS1" ]; then
	nmap -v --max-retries 1 --max-rate 1 -oX ${nmap_cron_path} ${nmap_cron_target}
else
	nmap    --max-retries 1 --max-rate 1 -oX ${nmap_cron_path} ${nmap_cron_target}
fi

