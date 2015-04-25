#!/bin/bash

if [ -d /var/lib/ossec ]; then
	echo "OSSEC may already be installed. Exiting."
	exit 1
fi

apt-key adv --fetch-keys http://ossec.wazuh.com/repos/apt/conf/ossec-key.gpg.key

touch /etc/apt/sources.list.d/ossec.list
echo "deb http://ossec.wazuh.com/repos/apt/ubuntu precise main" > /etc/apt/sources.list.d/ossec.list
apt-get update
apt-get install ossec-hids-agent -y
