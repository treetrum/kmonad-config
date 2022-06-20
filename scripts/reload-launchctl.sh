#!/bin/bash

SERVICE_NAME=$1

if [ -z $SERVICE_NAME ]; then
      echo "Argument required (service name)"
	  exit
fi

sudo launchctl stop $SERVICE_NAME
sudo launchctl start $SERVICE_NAME