#!/bin/bash

source .settings.sh

curl -u "${HIK_USER}:${HIK_PASS}" --digest -X PUT -d @overlay.xml "http://${HIK_HOST}/ISAPI/System/Video/inputs/channels/1/overlays"
