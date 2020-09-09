#!/bin/bash
service="serv1 serv2 serv3"
for i in $service
do
	ps -ef | grep "$i"
	if [ s? -ne 0 ];then
		echo "$i" >> stopped-list
	fi
done
if [ ! -s stopped-list ];then
	cat stopped-list | mailx -s "service stopped" abc@gmail.com
fi
rm stopped list
                             

                              #crontab -e
			      # * * * * * /home/ec2-user/script/monitor.sh
