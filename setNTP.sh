#!/bin/bash

source .settings.sh

curl -v -u "${HIK_USER}:${HIK_PASS}" --digest -X PUT -d @timesettings.xml "http://${HIK_HOST}/ISAPI/System/time/ntpServers/1"
