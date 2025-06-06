#!/bin/bash

source .settings.sh

echo "rtsp://${HIK_USER}:${HIK_PASS}@${HIK_HOST}:${HIK_PORT:-554}/Streaming/channels/01"
