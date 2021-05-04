#!/bin/bash -xe
# Date: May 04, 2021
# Author: cplus.shen@gmail.com
# Description: subscribe the latest MQTT message.
# HOST, ID and PASS should be declared in ../mqtt.rc

source ../mqtt.rc

MQTT_FLAGS="-C 1"
mosquitto_sub -h $HOST -u $ID -P $PASS \
	$MQTT_FLAGS \
	-t $TOPIC
