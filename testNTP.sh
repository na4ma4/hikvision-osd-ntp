#!/bin/bash

source .settings.sh

# /ISAPI/System/time/ntpServers/test

curl -v -u "${HIK_USER}:${HIK_PASS}" --digest -X POST -d @timetest.xml "http://${HIK_HOST}/ISAPI/System/time/ntpServers/test"
